testing
testPrintTable
	| newline testString tab |
	tab := Character tab.
	newline := Character cr.
	testString := 'a', tab, 'b', newline, '1', tab, '2', newline, '3.5', tab, '4'.
	self table: SBTable new.
	self table
		addRows: 2 withSize: 2;
		addColumnName: 'a';
		addColumnName: 'b';
		row: 1 column: 1 value: (SBNumber newFromNumber: 1);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 3.5);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	self assert: self table printToTranscript = testString