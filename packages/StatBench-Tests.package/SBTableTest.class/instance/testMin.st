testing
testMin
	self table
		addRows: 3 withSize: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2.2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	self assert: (self table minForColumn: 1) = 1.
	self assert: (self table minForColumn: 1) = (SBNumber newFromNumber: 1).
	self assert: (self table minForColumn: 2) = 2.2.
	self assert: (self table minForColumn: 2) = (SBNumber newFromNumber: 2.2)