testing
testAddEmptyRow
	self table: SBTable new.
	self table
		addRows: 4 size: 3;
		addEmptyRow.
	self
		assert: self table rowLength equals: 3;
		assert: self table columnLength equals: 5;
		assert: (self table rowAt: 5) isEmpty