column functions
detectFactorsForColumn: aColumnIndex
	| column maxValues |
	column := self printColumnDataToCollection at: aColumnIndex.
	maxValues := self defaultFactorThreshold + self columnLength log.
	^ column asSet size <= maxValues