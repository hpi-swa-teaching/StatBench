aggregation
createTableWithColumnNamesForColumns: aColumnIndexList tuples: tupleList
	| table |
	table := SBTable new.
	aColumnIndexList do: [ :index |
		table addColumnName: (self columnNames at: index ifAbsent: [ '' ]) ].
	tupleList do: [ :tuple |
		table addColumnName: tuple first ].
	^ table