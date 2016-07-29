file input
readCSVStream: inStream header: hasHeader seperator: seperator
	| myLine table x y header linebreak headerOffset |
	inStream isNil
		ifTrue: [ ^ SBTable new ].
	table := SBTable new.
	header := OrderedCollection new.
	y := 1.
	linebreak := self unixNewline.
	headerOffset := hasHeader
		ifTrue: [ -1 ]
		ifFalse: [ 0 ].
	(inStream contents occurrencesOf: linebreak) strictlyPositive
		ifFalse: [ linebreak := self windowsNewline ].
	[ inStream atEnd ] whileFalse: [
		myLine := (inStream upTo: linebreak) readStream.
		x := 1.
		[ myLine atEnd ] whileFalse: [ | myCell |
 			myCell := (myLine upTo: seperator) withBlanksTrimmed.
			(y = 1 and: [ hasHeader ])
				ifTrue: [ header add: myCell ]
				ifFalse: [ self write: myCell to: table column: x row: y + headerOffset ].
			x := x + 1 ].
		y := y + 1 ].
	table columnNames: header.
	^ table