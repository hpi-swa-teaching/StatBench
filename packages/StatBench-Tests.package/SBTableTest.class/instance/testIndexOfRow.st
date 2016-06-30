testing
testIndexOfRow
	| row |
	self table: SBTable new.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2.2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	row := OrderedCollection newFrom: { SBNumber newFromNumber: 3 . SBNumber newFromNumber: 2.2 }.
	self
		assert: (self table indexOfRow: (self table rowAt: 1)) equals: 1;
		assert: (self table indexOfRow: (self table rowAt: 2)) equals: 2;
		assert: (self table indexOfRow: row) equals: 1