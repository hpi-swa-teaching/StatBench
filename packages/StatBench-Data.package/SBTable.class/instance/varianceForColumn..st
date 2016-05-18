math functions
varianceForColumn: aColumn
	| average variance sum |
	sum := 0.
	average := self averageForColumn: aColumn.
	self rows do: [ :currentRow |
		sum := ((currentRow at: aColumn) - average) squared + sum ].
	variance := sum / self rows size.
	^ variance
