as yet unclassified
openDiagramWithColumn: xValues with: yValues withType: aSymbol
	| instance |
	instance := self basicNew
		initialize.
	instance contentMorph diagramType: aSymbol.	
	^ instance
		displayColumn: xValues with: yValues;
		openWindow;
		yourself