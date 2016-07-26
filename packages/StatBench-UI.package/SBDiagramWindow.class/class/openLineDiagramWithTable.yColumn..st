instance creation
openLineDiagramWithTable: aTable yColumn: yIndex
	^ self basicNew
		initialize;
		contentMorph: SBDiagram newLineDiagram;
		displayYValues: (aTable columnAt: yIndex);
		openWindow;
		yourself