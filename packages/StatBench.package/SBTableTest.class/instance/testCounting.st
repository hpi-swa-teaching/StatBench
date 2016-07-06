testing
testCounting
	self table: SBTable new.
	self table
		addRows: 2 size: 2;
		row: 1 column: 1 value: 1 raw: false;
		row: 1 column: 2 value: 2.2 raw: false;
		row: 2 column: 1 value: 1 raw: false;
		row: 2 column: 2 value: 4.1 raw: false.
	self
		assert: (self table count: 1 inColumn: 1) equals: 2;
		assert: (self table count: 1 inColumn: 1) equals: 2;
		assert: (self table count: 4.1 inColumn: 2) equals: 1;
		assert: (self table count: 4.1 inColumn: 2) equals: 1