testing
testPrintRowAsString
	| rowString tab |
	tab := Character tab.
	self table: SBTable new.
	self table
		addRows: 3 withSize: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2.2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	rowString := '3', tab, '2.2'.
	self assert: (self table printRowWithIndex: 1) equals: rowString.
	rowString := '1', tab, '4'.
	self assert: (self table printRowWithIndex: 2) equals: rowString