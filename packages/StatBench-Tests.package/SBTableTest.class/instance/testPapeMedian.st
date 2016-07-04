testing
testPapeMedian
	self table: SBTable new.
	self table
		addRows: 4 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 1);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 3.5);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4);
		row: 3 column: 1 value: (SBNumber newFromNumber: 5);
		row: 3 column: 2 value: (SBNumber newFromNumber: 6).
	self
		assert: (self table papeMedianForColumn: 1) equals: 3.5;
		assert: (self table papeMedianForColumn: 1) equals: (SBNumber newFromNumber: 3.5);
		assert: (self table papeMedianForColumn: 2) equals: 4;
		assert: (self table papeMedianForColumn: 2) equals: (SBNumber newFromNumber: 4).
	self table
		row: 4 column: 1 value: 7;
		row: 4 column: 2 value: 8.
	self
		assert: ((self table papeMedianForColumn: 1) = 3.5 or: [ (self table papeMedianForColumn: 1) = 5 ]);
		assert: ((self table papeMedianForColumn: 2) = 4 or: [ (self table papeMedianForColumn: 2) = 6 ])