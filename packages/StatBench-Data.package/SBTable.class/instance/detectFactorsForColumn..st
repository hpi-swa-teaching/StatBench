factor detection
detectFactorsForColumn: aColumn
	| column maxValues |
	column := self printColumnDataToCollection at: aColumn.
	maxValues := self defaultFactorNumber + self columnLength log.
	^ column asSet size <= maxValues