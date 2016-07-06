testing
testGroupByColumnsAndCalculate
	| groupedTable |
	self table: SBTable new.
	self table
		addRows: 4 size: 3;
		row: 1 column: 1 value: 'a';
		row: 1 column: 2 value: 1 raw: false;
		row: 1 column: 3 value: 2 raw: false;
		row: 2 column: 1 value: 'b';
		row: 2 column: 2 value: 2 raw: false;
		row: 2 column: 3 value: 4 raw: false;
		row: 3 column: 1 value: 'a';
		row: 3 column: 2 value: 1 raw: false;
		row: 3 column: 3 value: 2 raw: false;
		row: 4 column: 1 value: 'b';
		row: 4 column: 2 value: 2 raw: false;
		row: 4 column: 3 value: 4 raw: false.
	
	groupedTable := self table groupByColumns: {1} andCalculate: {
		self table tupleForColumn: 2 name: 'sum' function: SBStatFunctions sum .
		self table tupleForColumn: 3 name: 'sum' function: SBStatFunctions sum }.
	
	self assert: (groupedTable row: 1 column: 2) equals: 2.
	self assert: (groupedTable row: 1 column: 3) equals: 4.
	self assert: (groupedTable row: 2 column: 2) equals: 4.
	self assert: (groupedTable row: 2 column: 3) equals: 8.