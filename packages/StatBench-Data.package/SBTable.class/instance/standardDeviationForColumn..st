math functions
standardDeviationForColumn: aColumn
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	^ (self varianceForColumn: aColumn) sqrt