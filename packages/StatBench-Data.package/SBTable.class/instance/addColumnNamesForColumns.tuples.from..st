aggregation
addColumnNamesForColumns: aColumnIndexList tuples: tupleList from: aTable
	aColumnIndexList do: [ :index |
		self addColumnName: (aTable columnNames at: index ifAbsent: [ '' ]) ].
	tupleList do: [ :tuple |
		self addColumnName: tuple first ]