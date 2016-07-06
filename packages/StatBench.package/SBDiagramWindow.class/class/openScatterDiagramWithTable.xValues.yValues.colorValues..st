instance creation
openScatterDiagramWithTable: aTable xValues: xValues yValues: yValues colorValues: colorValues
	| instance |
	instance := self basicNew
		initialize.
	instance contentMorph
		diagramType: #scatter;
		colorValues: colorValues.
	^ instance
		displayXValues: xValues yValues: yValues;
		openWindow;
		yourself