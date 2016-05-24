testing
testSearchForAll
	| dict |
	self table: SBTable new.
	dict := Dictionary new.
	self table
		addRows: 4 withSize: 3;
		row: 1 column: 1 value: (SBNumber newFromFloat: 1);
		row: 1 column: 2 value: (SBNumber newFromInt: 2);
		row: 1 column: 3 value: (SBNumber newFromInt: 7);
		row: 2 column: 1 value: (SBNumber newFromInt: 1);
		row: 2 column: 2 value: (SBNumber newFromInt: 4);
		row: 2 column: 3 value: (SBNumber newFromFloat: 3.3);
		row: 3 column: 1 value: (SBNumber newFromInt: 5);
		row: 3 column: 2 value: (SBNumber newFromInt: 4);
		row: 3 column: 3 value: (SBNumber newFromFloat: 9.123);
		row: 4 column: 1 value: (SBNumber newFromInt: 1);
		row: 4 column: 2 value: (SBNumber newFromFloat: 8.5);
		row: 4 column: 3 value: (SBNumber newFromInt: 5).
	dict := self table searchForAll: 1 inColumn: 1. 
	self assert: (dict at: 1) = #(1 2 7) asOrderedCollection.
	self assert: (dict at: 2) = #(1 4 3.3) asOrderedCollection