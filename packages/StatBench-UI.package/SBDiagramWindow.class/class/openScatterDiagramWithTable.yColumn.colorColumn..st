instance creation
openScatterDiagramWithTable: aTable yColumn: yIndex colorColumn: colorIndex
	^ self basicNew
		initialize;
		contentMorph: (SBDiagram newScatterDiagramColorValues: (aTable columnAt: colorIndex));
		displayYValues: (aTable columnAt: yIndex);
		openWindow;
		yourself