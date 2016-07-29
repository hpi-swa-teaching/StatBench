testing
testMin
	self table: SBTable new.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 2.2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self
		assert: (self table minForColumn: 1) = 1;
		assert: (self table minForColumn: 2) = (ArbitraryPrecisionFloat readFrom: '2.2')