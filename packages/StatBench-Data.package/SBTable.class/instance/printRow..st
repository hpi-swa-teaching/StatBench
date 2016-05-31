printing
printRow: row
	| rowString tab |
	tab := Character tab asString.
	rowString := ''.
	row do: [ :element |
		rowString := rowString, element, tab ].
	^ rowString allButLast