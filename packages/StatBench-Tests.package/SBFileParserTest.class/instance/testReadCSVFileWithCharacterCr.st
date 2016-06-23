testing
testReadCSVFileWithCharacterCr
	| csvString stream |
	csvString := 'a,b,c,d', Character cr, '1,2,3,4', Character cr, '5,6,7,8'.
	stream := ReadStream on: csvString.
	self table: (SBFileParser readCSVStream: stream header: true seperator: SBFileParser csvSeparator).
	
	self
		assert: (self table row: 1 column: 1) equals: (SBNumber newFromNumber: 1);
		assert: (self table row: 1 column: 1) equals: 1;
		assert: (self table row: 2 column: 4) equals: (SBNumber newFromNumber: 8);
		assert: (self table row: 2 column: 4) equals: 8;
		assert: self table columnNames equals: #(a b c d) asOrderedCollection