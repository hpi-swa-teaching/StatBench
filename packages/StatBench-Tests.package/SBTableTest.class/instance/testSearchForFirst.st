testing
testSearchForFirst
	| dict |
	self table: SBTable new.
	dict := Dictionary new.
	self table
		addRows: 4 withSize: 3;
		row: 1 column: 1 value: (SBNumber newFromNumber: 1);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2);
		row: 1 column: 3 value: (SBNumber newFromNumber: 7);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1.7);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4);
		row: 2 column: 3 value: (SBNumber newFromNumber: 3.3);
		row: 3 column: 1 value: (SBNumber newFromNumber: 5);
		row: 3 column: 2 value: (SBNumber newFromNumber: 4);
		row: 3 column: 3 value: (SBNumber newFromNumber: 9.123);
		row: 4 column: 1 value: (SBNumber newFromNumber: 1);
		row: 4 column: 2 value: (SBNumber newFromNumber: 8.5);
		row: 4 column: 3 value: (SBNumber newFromNumber: 5).
	self assert: (self table searchForFirst: 1 inColumn: 1) equals: (self table rowAt: 1).
	self assert: (self table searchForFirst: 4 inColumn: 2) equals: (self table rowAt: 2).
	self assert: (self table searchForFirst: 4 inColumn: 1) equals: nil.