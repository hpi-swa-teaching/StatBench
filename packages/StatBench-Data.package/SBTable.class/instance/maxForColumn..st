math functions
maxForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [
			(self columnWithoutNilValuesAt: aColumn) detectMax: [ :element |
				element ]]