math functions
medianColumn: aColumn
	"compute median"
	| sorted row n  |
	sorted := SortedCollection new.
	1 to: rows size do: [ :currentRow |
		row := rows at: aColumn..
			sorted add: (self row: currentRow  column: aColumn).].
	n := sorted size.
	((n \\ 2)=0)
		ifTrue:  [^(((sorted at: (n/2)) + (sorted at: ((n/2)+1)))/2)]
		ifFalse: [^(sorted at: ((n +1)/2))]
