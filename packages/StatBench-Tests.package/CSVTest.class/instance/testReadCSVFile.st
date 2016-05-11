as yet unclassified
testReadCSVFile
	| csvString stream table |
	csvString := 'a,b,c,d', Character linefeed, '1,2,3,4', Character linefeed, '5,6,7,8'.
	stream := Stream on: csvString.
	table := SBCSVParser readCSVStream: stream.
	
	self assert: (table row: 0 column: 0) equals: 1.
	self assert: (table row: 1 column: 3) equals: 8.
	self assert: table columnNames equals: #(a b c d) asOrderedCollection.