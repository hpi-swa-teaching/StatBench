column functions
detectFactorsForColumn: aColumnIndex
	| column |
	column := self printColumnDataToCollection at: aColumnIndex.
	^ column asSet size <= (self defaultFactorThreshold + self columnLength log)