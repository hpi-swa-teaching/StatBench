math functions
medianForColumn: aColumn
	| sortedValues currentValue |
	sortedValues := SortedCollection new.
	self rows do: [ :currentRow |
		currentValue := currentRow at: aColumn.
		currentValue ifNotNil: [
			sortedValues add: currentValue ]].
	sortedValues size \\ 2 = 0
		ifTrue:  [ ^ (sortedValues at: (sortedValues size / 2)) + (sortedValues at: (sortedValues size / 2 + 1)) / 2 ]
		ifFalse: [ ^ sortedValues median ]