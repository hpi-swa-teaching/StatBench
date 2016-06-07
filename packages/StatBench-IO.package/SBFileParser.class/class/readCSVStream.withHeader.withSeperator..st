file IO
readCSVStream: inStream withHeader: hasHeader withSeperator: aCharacter
	| myLine table x y header row seperator linebreak |
	inStream
		ifNil: [ ^ SBTable new ].
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
 			myCell := (myLine upTo: seperator) withBlanksTrimmed.
			((y = 1) and: [ hasHeader ])
				ifTrue: [ header add: myCell ]
				ifFalse: [
					hasHeader
						ifTrue: [ row := y - 1 ]
						ifFalse: [ row := y ]. 
					table addRowIfAbsent: row.
					table columnNumberState at: x ifAbsentPut: [ true ].
					(table class isEntryANumber: myCell)
						ifTrue: [ table addColumnIfAbsent: x toRow: row withValue: myCell raw: false ]
						ifFalse: [
							table addColumnIfAbsent: x toRow: row withValue: myCell raw: true.
							table columnNumberState at: x put: false ]].
			x := x + 1 ].
		y := y + 1 ].
	table columnNames: header.
	^ table