testing
testReadCSVFile
	self
		table: (SBFileParser
			readCSVStream: (ReadStream on: 'a,b', SBFileParser unixNewline, '1,2', SBFileParser unixNewline, '3,4')
			header: true
			separator: SBFileParser csvSeparator);
		assert: (self table row: 1 column: 1) equals: 1;
		assert: (self table row: 1 column: 2) equals: 2;
		assert: (self table row: 2 column: 1) equals: 3;
		assert: (self table row: 2 column: 2) equals: 4;
		assert: self table columnNames equals: #(a b) asOrderedCollection