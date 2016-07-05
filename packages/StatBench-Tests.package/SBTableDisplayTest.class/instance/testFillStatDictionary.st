testing
testFillStatDictionary
	| aTable  |
	aTable := SBTable new.
	aTable
		addRows: 1 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 5);
		addRowIfAbsent: 1.	
	self tableDisplay table: aTable.
	self assert: ((self tableDisplay statDictionary at: #max) = {} asOrderedCollection ).
	self tableDisplay fillStatDictionary.
	self assert: ((self tableDisplay statDictionary at: #max) = {3 . 5} asOrderedCollection )