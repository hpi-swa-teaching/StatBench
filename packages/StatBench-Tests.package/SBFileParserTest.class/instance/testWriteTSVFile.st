testing
testWriteTSVFile
	| fileName seperator readTable |
	seperator := SBFileParser tsvSeparator.
	fileName := 'tsvwritetest'.
	self table: SBTable new.
	self table
		addRows: 2 withSize: 2;
		addColumnName: 'a';
		addColumnName: 'b';
		row: 1 column: 1 value: (SBNumber newFromNumber: 1);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2.2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 3);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	SBFileParser writeTable: self table toTSVFile: fileName header: true.
	
	readTable := SBFileParser readTSVFile: fileName, '.tsv' header: true.
	self
		assert: (self table row: 1 column: 1) equals: (readTable row: 1 column: 1);
		assert: (self table row: 1 column: 2) equals: (readTable row: 1 column: 2);
		assert: (self table row: 2 column: 1) equals: (readTable row: 2 column: 1);
		assert: (self table row: 2 column: 2) equals: (readTable row: 2 column: 2);
		assert: self table columnNames equals: readTable columnNames