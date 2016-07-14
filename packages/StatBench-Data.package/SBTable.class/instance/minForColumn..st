math functions
minForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions min value: (self columnWithoutNilValuesAt: aColumn) ]