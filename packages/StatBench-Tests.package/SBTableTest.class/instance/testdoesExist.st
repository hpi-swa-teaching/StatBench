testing
testdoesExist
	self table: SBTable new.
	self table
		addRows: 4 withSize: 3;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 1 column: 3 value: 7;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4;
		row: 2 column: 3 value: 3;
		row: 3 column: 1 value: 5;
		row: 3 column: 2 value: 4;
		row: 3 column: 3 value: 9;
		row: 4 column: 1 value: 1;
		row: 4 column: 2 value: 8;
		row: 4 column: 3 value: 5.
	self assert: (self table does: 1 existInColumn: 1) equals: true.
	self assert: (self table does: 1 existInColumn: 2) equals: false.
	self assert: (self table does: 4 existInColumn: 3) equals: false.
	self assert: (self table does: 8 existInColumn: 2) equals: true