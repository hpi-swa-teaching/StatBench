math functions
averageForColumn: aColumn
	| average sum |
	sum := 0.
	self rows do: [ :currentRow |
		sum := (currentRow at: aColumn) + sum ].
	average := sum / self rows size.
	^ average