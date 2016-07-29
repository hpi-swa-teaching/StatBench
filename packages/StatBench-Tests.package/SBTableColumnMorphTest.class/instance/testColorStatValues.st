testing
testColorStatValues
	| aTableDisplay aTable |
	aTable := SBTable new.
	aTable
		addRows: 4 size: 1;
		row: 1 column: 1 value: 3;
		row: 2 column: 1 value: 5;
		row: 3 column: 1 value: 7.332;
		row: 4 column: 1 value: 14.1.
	aTableDisplay := SBTableDisplay new.
	self tableColumn 
		column: 1;
		columnContents: aTable printColumnDataToCollection first;
		header: nil.
	aTableDisplay
		table: aTable;
		fillStatDictionary.
	self tableColumn
		updateContent;
		colorStatisticValues: aTableDisplay statDictionary.
	self
		assert: self tableColumn submorphs first backgroundColor equals: Color red;
		assert: self tableColumn submorphs third backgroundColor equals: Color yellow;
		assert: self tableColumn submorphs fourth backgroundColor equals: Color green