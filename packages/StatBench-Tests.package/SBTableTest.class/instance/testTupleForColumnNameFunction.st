testing
testTupleForColumnNameFunction
	| tuple |
	self table: SBTable new.
	tuple := self table tupleForColumn: 1 name: '2' function: [ :element | element ].
	self
		assert: tuple first equals: '2';
		assert: tuple second equals: 1;
		assert: (tuple third value: 4) equals: 4