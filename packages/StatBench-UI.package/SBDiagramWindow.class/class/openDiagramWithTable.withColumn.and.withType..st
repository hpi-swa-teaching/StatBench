as yet unclassified
openDiagramWithTable: aTable withColumn: xindex and: yindex withType: aSymbol
	^ self openDiagramWithColumn: (aTable columnAt: xindex) with: (aTable columnAt: yindex) withType: aSymbol