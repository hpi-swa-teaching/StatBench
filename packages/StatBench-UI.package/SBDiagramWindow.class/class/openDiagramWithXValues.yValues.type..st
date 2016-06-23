as yet unclassified
openDiagramWithXValues: xValues yValues: yValues type: aSymbol
	| instance |
	instance := self basicNew
		initialize.
	instance contentMorph diagramType: aSymbol.	
	^ instance
		displayColumn: xValues with: yValues;
		openWindow;
		yourself