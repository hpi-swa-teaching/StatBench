instance creation
openBarDiagramWithTable: aTable yColumn: yIndex
	^ self basicNew
		initialize;
		contentMorph: SBDiagram newBarDiagram;
		displayYValues: (aTable columnAt: yIndex);
		openWindow;
		yourself