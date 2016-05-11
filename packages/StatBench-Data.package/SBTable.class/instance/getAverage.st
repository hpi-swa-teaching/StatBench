math functions
getAverage
	"computes average Value per Column"

	| average sum counter row |
	sum:=0.
	counter:=0.
	(1 to: rows size) do: [ :currentRow |
		row := rows at: currentRow.
		(1 to: row size) do: [ :currentColumn |
			sum += self row: currentRow  column: currentColumn.
			counter+=1]].
	average:=(sum/counter).
	
	^average.