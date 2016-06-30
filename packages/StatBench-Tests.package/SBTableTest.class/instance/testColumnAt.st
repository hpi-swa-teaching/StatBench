testing
testColumnAt
	self table: SBTable new.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 5);
		row: 2 column: 1 value: nil;
		row: 2 column: 2 value: (SBNumber newFromNumber: 6).
	self
		assert: (self table columnAt: 1) size equals: 3;
		assert: (self table columnAt: 1) first equals: 3;
		assert: (self table columnAt: 1) second equals: nil;
		assert: (self table columnWithoutNilValuesAt: 1) size equals: 1;
		assert: (self table columnWithoutNilValuesAt: 1) first equals: 3