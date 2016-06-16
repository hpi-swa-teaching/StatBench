math functions
standardDeviationForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ (self varianceForColumn: aColumn) sqrt ]