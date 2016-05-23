math functions
papeMedianForColumn: aColumn
	"Assures that the resulting value is element of the Collection"
	| sortedValues columnValues |
	sortedValues := SortedCollection new.
	columnValues := OrderedCollection new.
	self rows collect: [ :currentRow |
		(currentRow at: aColumn) isNil not
			ifTrue: [ currentRow at: aColumn ]] into: columnValues.
	sortedValues addAll: (columnValues select: [ :element | element isNil not ]).
	^ sortedValues median