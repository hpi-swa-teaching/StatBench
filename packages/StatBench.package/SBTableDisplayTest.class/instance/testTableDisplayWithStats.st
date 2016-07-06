testing
testTableDisplayWithStats
	| collumnCollection aTable statCollection columnCollection|
	aTable := SBTable new.
	aTable
		addRows: 4 size: 1;
		row: 1 column: 1 value: 3;
		row: 2 column: 1 value: 5;
		row: 3 column: 1 value: 7.332;
		row: 4 column: 1 value: 14.1.
	collumnCollection := SBTableColumnMorph new.
	collumnCollection 
		column: 1;
		columnContents: {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4} asOrderedCollection;
		header: nil.
	self tableDisplay 
		table: aTable;
		fillStatDictionary.
	statCollection := self tableDisplay printStatsToTextMorphs.
	columnCollection := (self tableDisplay) createColumnMorphsFor: (self tableDisplay table printColumnDataToCollection).
	self tableDisplay buildTableDisplayWithStats: statCollection columns: columnCollection .
	self assert: self tableDisplay height equals: (self tableDisplay height max: (statCollection first height + self tableDisplay padding + columnCollection first height))