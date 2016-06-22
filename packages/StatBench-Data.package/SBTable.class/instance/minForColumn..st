math functions
minForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ SBStatFunctions min value: (self columnWithoutNilValuesAt: aColumn) ]