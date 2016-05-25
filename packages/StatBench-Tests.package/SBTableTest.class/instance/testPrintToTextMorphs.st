testing
testPrintToTextMorphs
	| testStrings newline morphCollection |
	newline := Character cr.
	testStrings := OrderedCollection new.
	self table: SBTable new.
	self table
		addRows: 2 withSize: 3;
		row: 1 column: 1 value: (SBNumber newFromNumber: 1);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2.2);
		row: 1 column: 3 value: (SBNumber newFromNumber: 7);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1.3);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4);
		row: 2 column: 3 value: (SBNumber newFromNumber: 3).
	testStrings add: '1', newline, '1.3'.
	testStrings add: '2.2', newline, '4'.
	testStrings add: '7', newline, '3'.
	morphCollection := self table printToTextMorphs.
	self
		assert: morphCollection first contents equals: testStrings first;
		assert: morphCollection second contents equals: testStrings second;
		assert: morphCollection third contents equals: testStrings third