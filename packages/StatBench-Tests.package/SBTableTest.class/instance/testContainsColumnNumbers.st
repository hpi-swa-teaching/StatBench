testing
testContainsColumnNumbers
	self table: SBTable new.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 2.2 raw: false;
		row: 2 column: 1 value: 'abc';
		row: 2 column: 2 value: '4' raw: false.
	self
		deny: self table columnNumberState first;
		assert: self table columnNumberState second.
	self table rows first add: 'asd'.
	self should: [ self table containsColumnNumbers: 3 ] raise: Error