data management
calculateMaxRange
	self diagramProperties at: #maxRange put:
		(self maxRangeForCollection: (self function collect: [ :tuple |
			tuple second ]))