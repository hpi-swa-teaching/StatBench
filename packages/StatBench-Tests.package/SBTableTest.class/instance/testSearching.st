testing
testSearching
	| table dict |
	table := SBTable new.
	dict := Dictionary new.
	table
		addRows: 2 withSize: 2;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	dict := table search: 1 inColumn: 1. 
	self assert: (dict at: 1) = (#(1 2) asOrderedCollection).
	self assert: (dict at: 2) = (#(1 4) asOrderedCollection)