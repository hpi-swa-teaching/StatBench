fileIn/Out
readCSVStream: inStream withHeader: hasHeader
	| myLine table x y header |
	table := SBTable new.
	header := OrderedCollection new.
	x := 1.
	y := 1.
	
	[ inStream atEnd ] whileFalse: [
		myLine := (inStream upTo: Character cr) readStream.
		[ myLine atEnd ] whileFalse: [ | myCell |
 			myCell := myLine upTo: self separator.
			((y = 1) and: [hasHeader])
				ifTrue: [
					header addLast: myCell ]
				ifFalse: [
					table row: y column: x value: myCell asInteger ]. " (SBNumber newFromFloatString: myCell) "
			x := x + 1. ].
		y := y + 1. ].
	
	^ table