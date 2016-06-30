testing
testAddRowsSize
	self table: SBTable new.
	self
		assert: self table rowLength equals: 0;
		assert: self table columnLength equals: 0.
	self table addRows: 4 size: 3.
	self
		assert: self table rowLength equals: 3;
		assert: self table columnLength equals: 4