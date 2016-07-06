testing
testPrintColumnDataToCollection
	| columnData |
	self table: SBTable new.
	self table
		addRows: 4 size: 2;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 3.5;
		row: 2 column: 2 value: 4;
		row: 3 column: 1 value: 5;
		row: 3 column: 2 value: 6.
	columnData := self table printColumnDataToCollection.
	self
		assert: columnData first first equals: (self table row: 1 column: 1) asString;
		assert: columnData second first equals: (self table row: 1 column: 2) asString;
		assert: columnData first second equals: (self table row: 2 column: 1) asString;
		assert: columnData second second equals: (self table row: 2 column: 2) asString;
		assert: columnData first third equals: (self table row: 3 column: 1) asString;
		assert: columnData second third equals: (self table row: 3 column: 2) asString