testing
testWriteCSVFile
	| table fileName delimter readTable |
	delimter := SBFileParser separator.
	fileName := 'abc.csv'.
	table := SBTable new.
	table
		addRows: 2 withSize: 2;
		addColumnName: 'a';
		addColumnName: 'b';
		row: 1 column: 1 value: (SBNumber newFromInt: 1);
		row: 1 column: 2 value: (SBNumber newFromInt: 2);
		row: 2 column: 1 value: (SBNumber newFromInt: 3);
		row: 2 column: 2 value: (SBNumber newFromInt: 4).
	SBFileParser writeTable: table toCSVFile: fileName withHeader: true.
	
	readTable := SBFileParser readCSVFile: fileName withHeader: true.
	self assert: (table row: 1 column: 1) equals: (readTable row: 1 column: 1).
	self assert: (table row: 1 column: 2) equals: (readTable row: 1 column: 2).
	self assert: (table row: 2 column: 1) equals: (readTable row: 2 column: 1).
	self assert: (table row: 2 column: 2) equals: (readTable row: 2 column: 2).
	self assert: table columnNames equals: readTable columnNames