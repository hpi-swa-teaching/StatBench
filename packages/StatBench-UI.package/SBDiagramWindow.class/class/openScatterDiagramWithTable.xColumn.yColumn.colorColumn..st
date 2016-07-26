instance creation
openScatterDiagramWithTable: aTable xColumn: xIndex yColumn: yIndex colorColumn: colorIndex
	^ self basicNew
		initialize;
		contentMorph: (SBDiagram newScatterDiagramColorValues: (aTable columnAt: colorIndex));
		displayXValues: (aTable columnAt: xIndex) yValues: (aTable columnAt: yIndex);
		openWindow;
		yourself