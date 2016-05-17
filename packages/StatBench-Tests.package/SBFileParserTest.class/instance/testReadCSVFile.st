testing
testReadCSVFile
	| csvString stream table |
	csvString := 'a,b,c,d', SBFileParser newline, '1,2,3,4', SBFileParser newline, '5,6,7,8'.
	stream := ReadStream on: csvString.
	table := SBFileParser readCSVStream: stream withHeader: true.
	
	self assert: (table row: 1 column: 1) equals: 1.
	self assert: (table row: 2 column: 4) equals: 8.
	self assert: table columnNames equals: #(a b c d) asOrderedCollection