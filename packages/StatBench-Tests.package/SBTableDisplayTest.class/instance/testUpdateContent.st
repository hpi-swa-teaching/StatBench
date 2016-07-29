testing
testUpdateContent
	| aTable |	
	aTable := SBTable new.
	aTable
		addRows: 4 size: 1;
		row: 1 column: 1 value: 3;
		row: 2 column: 1 value: 5;
		row: 3 column: 1 value: 7.332;
		row: 4 column: 1 value: 14.1.
	self tableDisplay displayTable: aTable.
	self assert: ((self tableDisplay table rows at: 1) at: 1) equals: 3.
	aTable row: 1 column: 1 value: 7.
	self tableDisplay table: aTable.
	self tableDisplay updateContent.
	self assert: ((self tableDisplay table rows at: 1) at: 1) equals: 7