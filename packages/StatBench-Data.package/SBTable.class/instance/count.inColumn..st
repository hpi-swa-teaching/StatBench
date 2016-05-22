table management
count: aValue inColumn: aColumn
	| count value |
	count := 0.
	value := 0.
	self rows do: [ :currentRow | 
		value := currentRow at: aColumn.
		value = aValue ifTrue: [
			  count := 1 + count ]].
	^ count
