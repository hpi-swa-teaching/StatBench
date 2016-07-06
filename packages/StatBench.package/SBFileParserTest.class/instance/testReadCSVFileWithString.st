testing
testReadCSVFileWithString
	| csvString |
	csvString := 'a,b,c,d', SBFileParser newline, '5asd,6,123g7,8...5.2'.
	self
		table: (SBFileParser
			readCSVStream: (ReadStream on: csvString)
			header: true
			seperator: SBFileParser csvSeparator);
		assert: (self table row: 1 column: 1) equals: '5asd';
		assert: (self table row: 1 column: 2) equals: 6;
		assert: (self table row: 1 column: 3) equals: '123g7';
		assert: (self table row: 1 column: 4) equals: '8...5.2';
		assert: self table columnNames equals: #(a b c d) asOrderedCollection