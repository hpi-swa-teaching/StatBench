instance creation
openTable: aTable
	^ self basicNew
		initialize;
		displayTable: aTable;
		openWindow;
		yourself