instance creation
openDiagramWithTable: aTable yColumn: yindex type: aSymbol
	^ self openDiagramWithYValues: (aTable columnAt: yindex) type: aSymbol