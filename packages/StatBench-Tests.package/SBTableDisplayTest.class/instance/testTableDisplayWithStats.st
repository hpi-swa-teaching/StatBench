testing
testTableDisplayWithStats
	"| collumnCollection aTable |
	aTable := SBTable new.
	aTable
		addRows: 1 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 5);
		addRowIfAbsent: 1.	
	self tableDisplay table: aTable.
	collumnCollection := SBTableColumnMorph new.
	collumnCollection 
		column: 1;
		columnContents: {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4} asOrderedCollection  ;
		header: nil.
	self tableDisplay buildTableDisplayWithStats: (self tableDisplay printStatsToTextMorphs) columns: ((self tableDisplay) createColumnMorphsFor: (self tableDisplay table printColumnDataToCollection) ) ."