testing
testPrintColumnDataToStrings
	| testStrings newline printCollection |
	newline := Character cr.
	testStrings := OrderedCollection new.
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
	testStrings add: '1', newline, '1', newline, '5', newline, '1'.
	testStrings add: '2', newline, '4', newline, '4', newline, '8.5'.
	testStrings add: '7', newline, '3', newline, '9', newline, '5'.
	printCollection := self table printColumnDataToStrings.
	self
		assert: printCollection first equals: testStrings first;
		assert: printCollection second equals: testStrings second;
		assert: printCollection third equals: testStrings third