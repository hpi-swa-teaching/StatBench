testing
testSearchForLast
	| dict |
	self table: SBTable new.
	dict := Dictionary new.
	self table
		addRows: 4 withSize: 3;
		row: 1 column: 1 value: (SBNumber newFromFloat: 1);
		row: 1 column: 2 value: (SBNumber newFromInt: 2);
		row: 1 column: 3 value: (SBNumber newFromInt: 7);
		row: 2 column: 1 value: (SBNumber newFromFloat: 1.7);
		row: 2 column: 2 value: (SBNumber newFromInt: 4);
		row: 2 column: 3 value: (SBNumber newFromFloat: 3.3);
		row: 3 column: 1 value: (SBNumber newFromInt: 5);
		row: 3 column: 2 value: (SBNumber newFromInt: 4);
		row: 3 column: 3 value: (SBNumber newFromFloat: 9.123);
		row: 4 column: 1 value: (SBNumber newFromInt: 1);
		row: 4 column: 2 value: (SBNumber newFromFloat: 8.5);
		row: 4 column: 3 value: (SBNumber newFromInt: 5).
	self assert: (self table searchForLast: 1 inColumn: 1) equals: (self table rows at: 4).
	self assert: (self table searchForLast: 4 inColumn: 2) equals: (self table rows at: 3).
	self assert: (self table searchForLast: 4 inColumn: 1) equals: nil