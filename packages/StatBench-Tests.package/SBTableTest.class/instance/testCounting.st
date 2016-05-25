testing
testCounting
	self table: SBTable new.
	self table
		addRows: 2 withSize: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 1);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2.2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4.1).
	self
		assert: (self table count: 1 inColumn: 1) equals: 2;
		assert: (self table count: (SBNumber newFromNumber: 1) inColumn: 1) equals: 2;
		assert: (self table count: 4.1 inColumn: 2) equals: 1;
		assert: (self table count: (SBNumber newFromNumber: 4.1) inColumn: 2) equals: 1