testing
testAddColumnIfAbsentToRow
	self table: SBTable new.
	self table
		addRows: 1 size: 2;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 5;
		addColumnIfAbsent: 1 toRow: 1.
	self
		assert: self table rowLength equals: 2;
		assert: (self table row: 1 column: 1) equals: 3.
	self table addColumnIfAbsent: 10 toRow: 1.
	self
		assert: self table rowLength equals: 10;
		assert: (self table row: 1 column: 5) equals: nil