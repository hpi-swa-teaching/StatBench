testing
testdoesExist
	self table: SBTable new.
	self table
		addRows: 2 withSize: 3;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self assert: (self table does: 1 existInColumn: 1) equals: true.
	self assert: (self table does: 1 existInColumn: 2) equals: false.
	self assert: (self table does: 1 existInColumn: 3) equals: false