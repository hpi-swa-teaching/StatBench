math functions
medianColumn: aColumn
	"compute median"
	| daten row |
	daten := SortedCollection new.
	1 to: rows size do: [ :currentRow |
		row := rows at: currentRow.
		1 to: row size do: [ :currentColumn |
			daten add self row: currentRow  column: currentColumn.]].
	^ daten at: daten size + 1 // 2