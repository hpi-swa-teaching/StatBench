file IO
readCSVStream: inStream withHeader: hasHeader withSeperator: aCharacter
	| myLine table x y header row seperator linebreak |
	table := SBTable new.
	header := OrderedCollection new.
	seperator := aCharacter.
	x := 1.
	y := 1.
	row := 1.
	linebreak := SBFileParser newline.
	(inStream contents occurrencesOf: linebreak) strictlyPositive
		ifFalse: [ linebreak := Character cr ].
	[ inStream atEnd ] whileFalse: [
		myLine := (inStream upTo: linebreak) readStream.
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
					table columnNumberState at: x ifAbsentPut: [ true ].
					(table class isEntryANumber: myCell)
						ifTrue: [ table addColumnIfAbsent: x toRow: row withValue: (SBNumber newFromString: myCell) ]
						ifFalse: [
							table addColumnIfAbsent: x toRow: row withValue: myCell.
							table columnNumberState at: x put: false ]].
			x := x + 1 ].
		y := y + 1 ].
	table columnNames: header.
	^ table