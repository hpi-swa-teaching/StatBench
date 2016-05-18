math functions
medianForColumn: aColumn
	| sorted |
	sorted := SortedCollection new.
	self rows do: [ :currentRow |
		sorted add: (currentRow at: aColumn) ].
	sorted size \\ 2 = 0
		ifTrue:  [ ^ (sorted at: (sorted size / 2)) + (sorted at: (sorted size / 2 + 1)) / 2 ]
		ifFalse: [ ^ sorted median ]