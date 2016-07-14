testing
testAddColumnWithName
	self table: SBTable new.
	self table
		addRows: 1 size: 0;
		addColumnWithName: 'asd'.
	self
		assert: self table rowLength equals: 1;
		assert: self table columnNames first equals: 'asd'