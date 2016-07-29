testing
testAddRowWithMaxLength
	self table: SBTable new.
	self table
		addRows: 4 size: 3;
		addRowWithMaxLength.
	self
		assert: self table rowLength equals: 3;
		assert: self table columnLength equals: 5;
		assert: (self table rowAt: 5) size equals: 3;
		assert: (self table row: 5 column: 2) isNil