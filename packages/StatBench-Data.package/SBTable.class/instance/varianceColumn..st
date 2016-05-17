math functions
varianceColumn: aColumn
	"computes average Value per Column"
	| average variance sum counter row |
	sum := 0.
	counter := 0.
	variance := 0.
	average := self averageColumn: aColumn.
	1 to: rows size do: [ :currentRow |
		row := rows at: aColumn.
			sum := sum + ((self row: currentRow column: aColumn) - average) squared.
			counter := counter + 1 ].
	variance  := sum / counter.
	^ variance 
