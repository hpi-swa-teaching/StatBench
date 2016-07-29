testing
testAddRowsSize
	self
		table: SBTable new;
		assert: self table rowLength isZero;
		assert: self table columnLength isZero.
	self table addRows: 4 size: 3.
	self
		assert: self table rowLength equals: 3;
		assert: self table columnLength equals: 4