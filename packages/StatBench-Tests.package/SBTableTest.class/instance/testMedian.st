testing
testMedian
	self table: SBTable new.
	self table
		addRows: 2 withSize: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4.3).
	self
		assert: (self table medianForColumn: 1) = 2;
		assert: (self table medianForColumn: 1) = (SBNumber newFromNumber: 2);
		assert: (self table medianForColumn: 2) = (2 + 4.3 / 2);
		assert: (self table medianForColumn: 2) = (SBNumber newFromNumber: (2 + 4.3) / 2)