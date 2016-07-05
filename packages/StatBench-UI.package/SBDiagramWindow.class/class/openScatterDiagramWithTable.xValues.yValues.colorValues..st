instance creation
openScatterDiagramWithTable: aTable xValues: xValues yValues: yValues colorValues: colorValues
	| instance |
	instance := self basicNew
		initialize.
	instance contentMorph
		diagramType: #scatter;
		colorValues: colorValues";
		entryWidth: 5".
	^ instance
		displayXValues: xValues yValues: yValues;
		openWindow;
		yourself