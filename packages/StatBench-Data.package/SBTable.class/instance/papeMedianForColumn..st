math functions
papeMedianForColumn: aColumn
	"Assures that the resulting value is element of the Collection"
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ (self columnWithoutNilValuesAt: aColumn) sorted median ]