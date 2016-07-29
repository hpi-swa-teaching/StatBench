testing
testUpdateContent
	| aTable aDisplayedTable |	
	aTable := SBTable new.
	aTable
		addRows: 4 size: 1;
		row: 1 column: 1 value: 3;
		row: 2 column: 1 value: 5;
		row: 3 column: 1 value: 7.332;
		row: 4 column: 1 value: 14.1.
	aDisplayedTable := self tableDisplay displayTable: aTable.
	self assert: ((aDisplayedTable table rows at: 1) at: 1) = 3.
	self tableDisplay table row: 1 column: 1 value: 7.
	aDisplayedTable := self tableDisplay updateContent.
	self assert: ((aDisplayedTable table rows at: 1) at: 1) = 7