table management
search: aValue inColumn: aColumn
	| foundAt value |
	foundAt := Dictionary new.
	self rows do: [ :currentRow | 
		value := currentRow at: aColumn.
		value = aValue ifTrue: [
			  foundAt at: (self rows indexOf: currentRow)  put: currentRow ]].
	^ foundAt