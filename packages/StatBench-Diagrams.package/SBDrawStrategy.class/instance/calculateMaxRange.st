data management
calculateMaxRange
	self diagramProperties at: #maxRange put:
		(self maxRangeForCollection: (self function values collect: [ :yValues |
			SBStatFunctions max value: yValues ]))