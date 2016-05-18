file IO
readCSVStream: inStream withHeader: hasHeader withSeperator: aCharacter
	| myLine table x y header row seperator |
	table := SBTable new.
	header := OrderedCollection new.
	seperator := aCharacter.
	x := 1.
	y := 1.
	row := 1.
	
	[ inStream atEnd ] whileFalse: [
		myLine := (inStream upTo: SBFileParser newline) readStream.
		x := 1.
		[ myLine atEnd ] whileFalse: [ | myCell |
 			myCell := myLine upTo: seperator.
			((y = 1) and: [ hasHeader ])
				ifTrue: [ header addLast: myCell ]
				ifFalse: [
					hasHeader
						ifTrue: [ row := y - 1 ]
						ifFalse: [ row := y ]. 
					table addRowIfAbsent: row.
					table addColumnIfAbsent: x toRow: row withValue: (SBNumber newFromString: myCell) ].
			x := x + 1. ].
		y := y + 1. ].
	table columnNames: header.
	^ table