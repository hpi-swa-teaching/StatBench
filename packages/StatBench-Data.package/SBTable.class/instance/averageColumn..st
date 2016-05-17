math functions
averageColumn: aColumn
	"computes average Value per Column"
	| average sum counter row |
	sum := 0.
	counter := 0.
	1 to: rows size do: [ :currentRow |
		row := rows at: aColumn.
			sum := sum + (self row: currentRow column: aColumn).
			counter := counter + 1 ].
	average := sum / counter.
	^ average