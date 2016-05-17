math functions
median
	"compute median"
	| sorted n row |
	sorted := SortedCollection new.
	1 to: rows size do: [ :currentRow |
		row := rows at: currentRow.
		1 to: row size do: [ :currentColumn |
			sorted add: (self row: currentRow column: currentColumn).]].
	n := sorted size.
	((n \\ 2)=0)
		ifTrue:  [^(((sorted at: (n/2)) + (sorted at: ((n/2)+1)))/2)]
		ifFalse: [^(sorted at: ((n +1)/2))]
