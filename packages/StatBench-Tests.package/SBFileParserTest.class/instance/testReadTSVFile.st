testing
testReadTSVFile
	| tsvString tab |
	tab := SBFileParser tsvSeparator.
	tsvString := 'a', tab, 'b', tab, 'c', tab, 'd', SBFileParser newline,
		'1', tab, '2', tab, '3', tab, '4', SBFileParser newline,
		'5', tab, '6', tab, '7.7', tab, '8'.
	self
		table: (SBFileParser
			readCSVStream: (ReadStream on: tsvString)
			header: true
			seperator: tab);
		assert: (self table row: 1 column: 1) equals: (SBNumber newFromNumber: 1);
		assert: (self table row: 2 column: 3) equals: (SBNumber newFromNumber: 7.7);
		assert: (self table row: 2 column: 4) equals: (SBNumber newFromNumber: 8);
		assert: self table columnNames equals: #(a b c d) asOrderedCollection