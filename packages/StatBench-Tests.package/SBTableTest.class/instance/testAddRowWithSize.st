testing
testAddRowWithSize
	self
		table: SBTable new;
		assert: self table rowLength isZero;
		assert: self table columnLength isZero.
	self table addRowWithSize: 4.
	self
		assert: self table rowLength equals: 4;
		assert: self table columnLength equals: 1