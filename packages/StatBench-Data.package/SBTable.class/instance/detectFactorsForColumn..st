factor detection
detectFactorsForColumn: aColumn
	| column maxValues |
	column := self printColumnDataToCollection at: aColumn.
	maxValues := self defaultFactorNumber + self rows size log.
	^ column asSet size <= maxValues