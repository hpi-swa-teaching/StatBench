testing
testSearchForFirst
	| table dict |
	table := SBTable new.
	dict := Dictionary new.
	table
		addRows: 2 withSize: 2;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self assert: (table searchForFirst: 1 inColumn: 1) equals: 1