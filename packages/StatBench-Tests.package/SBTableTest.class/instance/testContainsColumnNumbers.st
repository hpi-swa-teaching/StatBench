testing
testContainsColumnNumbers
	self table: SBTable new.
	self table
		addRows: 3 withSize: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2.2);
		row: 2 column: 1 value: 'abc';
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	self
		assert: self table columnNumberState first equals: false;
		assert: self table columnNumberState second equals: true.
		
	self table rows first add: 'asd'.
	self should: [ self table containsColumnNumbers: 3 ] raise: Error