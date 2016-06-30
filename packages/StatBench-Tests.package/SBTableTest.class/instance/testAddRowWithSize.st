testing
testAddRowWithSize
	self table: SBTable new.
	self
		assert: self table rowLength equals: 0;
		assert: self table columnLength equals: 0.
	self table addRowWithSize: 4.
	self
		assert: self table rowLength equals: 4;
		assert: self table columnLength equals: 1