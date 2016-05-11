fileIn/Out
readCSVStream: inStream
	| myLine |
	myLine := (inStream upTo: Character cr) readStream.
	[ myLine atEnd ] whileFalse: [ | myCell |
 		myCell := myLine upTo: self separator.
 		"TODO Do whatever with the cell" ].