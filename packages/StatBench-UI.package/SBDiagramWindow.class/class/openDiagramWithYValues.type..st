instance creation
openDiagramWithYValues: yValues type: aSymbol
	^ self openDiagramWithXValues: (SBTable indexCollectionFor: yValues) yValues: yValues type: aSymbol