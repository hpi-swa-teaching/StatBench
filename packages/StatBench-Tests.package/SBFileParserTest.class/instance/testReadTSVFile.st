testing
testReadTSVFile
	| tab |
	tab := SBFileParser tsvSeparator.
	self
		table: (SBFileParser
			readCSVStream: (ReadStream on: 'a', tab, 'b', tab, 'c', tab, 'd', SBFileParser unixNewline,
				'1', tab, '2', tab, '3', tab, '4', SBFileParser unixNewline,
				'5', tab, '6', tab, '7.7', tab, '8')
			header: true
			separator: tab);
		assert: (self table row: 1 column: 1) equals: 1;
		assert: (self table row: 2 column: 3) equals: 7.7;
		assert: (self table row: 2 column: 4) equals: 8;
		assert: self table columnNames equals: #(a b c d) asOrderedCollection