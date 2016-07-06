testing
testPrintStatsToTextMorph
	| aTable collumnCollection dataString |
	dataString := '3' , Character cr , '14.1' , Character cr , '7.358' , Character cr , '5' , Character cr , '4.1835262638114274' , Character cr , '17.501892' , Character cr , 'false'.
	aTable := SBTable new.
	aTable
		addRows: 4 size: 1;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 2 column: 1 value: (SBNumber newFromNumber: 5);
		row: 3 column: 1 value: (SBNumber newFromNumber: 7.332);
		row: 4 column: 1 value: (SBNumber newFromNumber: 14.1);
		addRowIfAbsent: 1.
	collumnCollection := SBTableColumnMorph new.
	collumnCollection 
		column: 1;
		columnContents: {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4} asOrderedCollection  ;
		header: nil.
	self tableDisplay 
		table: aTable;
		fillStatDictionary.
	self assert: ((self tableDisplay printStatsToTextMorphs) at: 1) data equals:  dataString.