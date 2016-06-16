math functions
minForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [
			(self columnWithoutNilValuesAt: aColumn) detectMin: [ :element |
				element ]]