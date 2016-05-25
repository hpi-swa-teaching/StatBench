testing
testDoesExist
	self table: SBTable new.
	self table
		addRows: 4 withSize: 3;
		row: 1 column: 1 value: (SBNumber newFromNumber: 1);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2);
		row: 1 column: 3 value: (SBNumber newFromNumber: 7);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4);
		row: 2 column: 3 value: (SBNumber newFromNumber: 3);
		row: 3 column: 1 value: (SBNumber newFromNumber: 5);
		row: 3 column: 2 value: (SBNumber newFromNumber: 4);
		row: 3 column: 3 value: (SBNumber newFromNumber: 9);
		row: 4 column: 1 value: (SBNumber newFromNumber: 1);
		row: 4 column: 2 value: (SBNumber newFromNumber: 8.5);
		row: 4 column: 3 value: (SBNumber newFromNumber: 5).
	self
		assert: (self table does: 1 existInColumn: 1) equals: true;
		assert: (self table does: (SBNumber newFromNumber: 1) existInColumn: 1) equals: true;
		assert: (self table does: 1 existInColumn: 2) equals: false;
		assert: (self table does: (SBNumber newFromNumber: 1) existInColumn: 2) equals: false;
		assert: (self table does: 4 existInColumn: 3) equals: false;
		assert: (self table does: (SBNumber newFromNumber: 4) existInColumn: 3) equals: false;
		assert: (self table does: 8.5 existInColumn: 2) equals: true;
		assert: (self table does: (SBNumber newFromNumber: 8.5) existInColumn: 2) equals: true