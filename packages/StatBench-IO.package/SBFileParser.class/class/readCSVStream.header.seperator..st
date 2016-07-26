file input
readCSVStream: inStream header: hasHeader seperator: aCharacter
	| myLine table x y header row seperator linebreak |
	inStream isNil
		ifTrue: [ ^ SBTable new ].
	table := SBTable new.
	header := OrderedCollection new.
	seperator := aCharacter.
	x := y := row := 1.
	linebreak := self unixNewline.
	(inStream contents occurrencesOf: linebreak) strictlyPositive
		ifFalse: [ linebreak := self windowsNewline ].
	[ inStream atEnd ] whileFalse: [
		myLine := (inStream upTo: linebreak) readStream.
		x := 1.
		[ myLine atEnd ] whileFalse: [ | myCell |
 			myCell := (myLine upTo: seperator) withBlanksTrimmed.
			(y = 1 and: [ hasHeader ])
				ifTrue: [ header add: myCell ]
				ifFalse: [
					row := hasHeader
						ifTrue: [ y - 1 ]
						ifFalse: [ y ]. 
					table addRowIfAbsent: row.
					table columnNumberState at: x ifAbsentPut: [ true ].
					(Number isStringANumber: myCell)
						ifTrue: [ table addColumnIfAbsent: x toRow: row value: myCell raw: false ]
						ifFalse: [
							table addColumnIfAbsent: x toRow: row value: myCell raw: true.
							table columnNumberState at: x put: false ]].
			x := x + 1 ].
		y := y + 1 ].
	table columnNames: header.
	^ table