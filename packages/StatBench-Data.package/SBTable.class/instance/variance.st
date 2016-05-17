math functions
variance
	"computes average Value per Column"
	| average variance sum counter row |
	sum := 0.
	counter := 0.
	variance := 0.
	average := self average.
	1 to: rows size do: [ :currentRow |
		row := rows at: currentRow.
		1 to: row size do: [ :currentColumn |
			sum := sum + ((self row: currentRow column: currentColumn) - average) squared.
			counter := counter + 1 ]].
	variance  := sum / counter.
	^ variance 
