instance creation
openBarDiagramWithTable: aTable xColumn: xIndex yColumn: yIndex
	^ self basicNew
		initialize;
		contentMorph: SBDiagram newBarDiagram;
		displayXValues: (aTable columnAt: xIndex) yValues: (aTable columnAt: yIndex);
		openWindow;
		yourself