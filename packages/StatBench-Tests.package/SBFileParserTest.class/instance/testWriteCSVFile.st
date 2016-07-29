testing
testWriteCSVFile
	| fileName readTable |
	fileName := 'csvwritetest'.
	self table: SBTable new.
	self table
		addRows: 2 size: 2;
		addColumnName: 'a';
		addColumnName: 'b';
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2.2;
		row: 2 column: 1 value: 3;
		row: 2 column: 2 value: 4.
	SBFileParser writeTable: self table toCSVFile: fileName header: true.
	readTable := SBFileParser readCSVFile: fileName, '.csv' header: true.
	self
		assert: (self table row: 1 column: 1) equals: (readTable row: 1 column: 1);
		assert: (self table row: 1 column: 2) equals: (readTable row: 1 column: 2);
		assert: (self table row: 2 column: 1) equals: (readTable row: 2 column: 1);
		assert: (self table row: 2 column: 2) equals: (readTable row: 2 column: 2);
		assert: self table columnNames equals: readTable columnNames