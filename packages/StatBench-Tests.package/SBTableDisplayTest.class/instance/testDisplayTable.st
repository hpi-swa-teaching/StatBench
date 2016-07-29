testing
testDisplayTable
	| aTable |	
	aTable := SBTable new.
	aTable
		addRows: 4 size: 1;
		row: 1 column: 1 value: 3;
		row: 2 column: 1 value: 5;
		row: 3 column: 1 value: 7.332;
		row: 4 column: 1 value: 14.1.
	self tableDisplay displayTable: aTable.
	self 
		assert: (self tableDisplay table row: 1 column: 1) equals: 3;
		assert: (self tableDisplay table row: 3 column: 1) equals: (ArbitraryPrecisionFloat readFrom: '7.332');
		assert: self tableDisplay contentMorphs first columnContents equals: {'3' . '5' . '7.332' . '14.1'} asOrderedCollection