instance creation
openDiagramWithXValues: xValues yValues: yValues type: aSymbol
	| instance |
	instance := self basicNew
		initialize.
	instance contentMorph diagramType: aSymbol.	
	^ instance
		displayXValues: xValues yValues: yValues;
		openWindow;
		yourself