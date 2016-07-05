instance creation
openScatterDiagramWithTable: aTable yColumn: yIndex colorColumn: zIndex
	^ self openScatterDiagramWithTable: aTable xValues: (SBTable indexCollectionFor: (aTable columnAt: yIndex)) yValues: (aTable columnAt: yIndex) colorValues: (aTable columnAt: zIndex)