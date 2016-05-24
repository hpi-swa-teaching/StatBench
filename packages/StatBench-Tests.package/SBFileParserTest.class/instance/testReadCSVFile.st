testing
testReadCSVFile
	| csvString stream |
	csvString := 'a,b,c,d', SBFileParser newline, '1,2,3,4', SBFileParser newline, '5,6,7,8'.
	stream := ReadStream on: csvString.
	self table: (SBFileParser readCSVStream: stream withHeader: true withSeperator: SBFileParser csvSeparator).
	
	self assert: (self table row: 1 column: 1) equals: (SBNumber newFromNumber: 1).
	self assert: (self table row: 1 column: 1) equals: 1.
	self assert: (self table row: 2 column: 4) equals: (SBNumber newFromNumber: 8).
	self assert: (self table row: 2 column: 4) equals: 8.
	self assert: self table columnNames equals: #(a b c d) asOrderedCollection