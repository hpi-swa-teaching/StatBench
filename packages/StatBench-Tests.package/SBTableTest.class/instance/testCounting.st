testing
testCounting
	self table: SBTable new.
	self table
		addRows: 2 withSize: 2;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self assert: (self table count: 1 inColumn: 1) equals: 2.
	self assert: (self table count: 4 inColumn: 2) equals: 1.