as yet unclassified
openDiagramWithColumn: xValues with: yValues
	^ self basicNew
		initialize;
		displayColumn: xValues with: yValues;
		openInWorld;
		yourself