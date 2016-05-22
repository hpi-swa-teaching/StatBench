math functions
papeMedianForColumn: aColumn
	| sortedValues currentValue |
	sortedValues := SortedCollection new.
	self rows do: [ :currentRow |
		currentValue := currentRow at: aColumn.
		currentValue ifNotNil: [
			sortedValues add: currentValue ]].
	^ sortedValues median