testing
testAddRowIfAbsent
	self table: SBTable new.
	self table
		addRows: 1 size: 2;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 5;
		addRowIfAbsent: 1.
	self
		assert: self table columnLength equals: 1;
		assert: (self table row: 1 column: 1) equals: 3.
	self table addRowIfAbsent: 10.
	self
		assert: self table columnLength equals: 10;
		should: [ self table row: 5 column: 1 ] raise: Error