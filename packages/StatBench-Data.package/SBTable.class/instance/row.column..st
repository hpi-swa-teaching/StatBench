accessing rows/columns
row: aRow column: aColumn
	(aRow <= rows size)
		ifTrue: [ |row|
			row := rows at: aRow.
			(aColumn <= (rows at: aRow) size)
				ifTrue: [
					^ row at: aColumn]].
	^ nil