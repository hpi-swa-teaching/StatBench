instance creation
openLineDiagramWithTable: aTable xColumn: xIndex yColumn: yIndex
	^ self basicNew
		initialize;
		contentMorph: SBDiagram newLineDiagram;
		displayXValues: (aTable columnAt: xIndex) yValues: (aTable columnAt: yIndex);
		openWindow;
		yourself