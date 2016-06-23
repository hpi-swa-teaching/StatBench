as yet unclassified
openDiagramWithTable: aTable xColumn: xindex yColumn: yindex type: aSymbol
	^ self openDiagramWithXValues: (aTable columnAt: xindex) yValues: (aTable columnAt: yindex) type: aSymbol