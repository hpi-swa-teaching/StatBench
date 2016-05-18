math functions
papeMedianForColumn: aColumn
	| sorted |
	sorted := SortedCollection new.
	self rows do: [ :currentRow |
		sorted add: (currentRow at: aColumn) ].
	^ sorted median