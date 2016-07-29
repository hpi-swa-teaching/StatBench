testing
testCreateTableWithColumnNamesForColumnsAndTuples
	| newTable |
	self table: SBTable new.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: 5 raw: false;
		row: 1 column: 2 value: 5 raw: false;
		row: 2 column: 1 value: 5 raw: false;
		row: 2 column: 2 value: 6 raw: false;
		row: 3 column: 1 value: 5 raw: false;
		row: 3 column: 2 value: 2 raw: false;
		addColumnName: 'first';
		addColumnName: 'second'.
	newTable := SBTable new.
	newTable
		addColumnNamesForColumns: { 1 }
			tuples: {
			self table tupleForColumn: 2 name: 'a' function: [] .
			self table tupleForColumn: 2 name: 'b' function: [] .
			self table tupleForColumn: 2 name: 'c' function: [] }
			from: self table.
	self
		table: newTable;
		assert: self table columnNames first equals: 'first';
		assert: self table columnNames second equals: 'a';
		assert: self table columnNames third equals: 'b';
		assert: self table columnNames fourth equals: 'c'