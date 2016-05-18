testing
testReadTSVFile
	| tsvString stream tab |
	tab := SBFileParser tsvSeparator.
	tsvString := 'a', tab, 'b', tab, 'c', tab, 'd', SBFileParser newline, '1', tab, '2', tab, '3', tab, '4', SBFileParser newline, '5', tab, '6', tab, '7', tab, '8'.
	stream := ReadStream on: tsvString.
	self table: (SBFileParser readCSVStream: stream withHeader: true withSeperator: tab).
	
	self assert: (self table row: 1 column: 1) equals: 1.
	self assert: (self table row: 2 column: 4) equals: 8.
	self assert: self table columnNames equals: #(a b c d) asOrderedCollection