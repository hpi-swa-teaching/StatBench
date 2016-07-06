instance creation
openScatterDiagramWithTable: aTable xColumn: xIndex yColumn: yIndex colorColumn: zIndex
	^ self openScatterDiagramWithTable: aTable xValues: (aTable columnAt: xIndex) yValues: (aTable columnAt: yIndex) colorValues: (aTable columnAt: zIndex).