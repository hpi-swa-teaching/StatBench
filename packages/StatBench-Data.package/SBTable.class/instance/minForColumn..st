math functions
minForColumn: aColumn
	| min currentValue |
	min := nil.
	self rows do: [ :currentRow |
		currentValue := currentRow at: aColumn.
		min
			ifNil: [ min := currentValue ]. 
		currentValue < min ifTrue: [
			min := currentValue ]].
	^ min