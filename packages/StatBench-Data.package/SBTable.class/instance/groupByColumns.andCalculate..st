aggregation
groupByColumns: aColumnIndexList andCalculate: aNameColumnIndexBlockCollection
	| groupDict groupValues groupedTable rowCounter columnCounter |
	
	groupDict := Dictionary new.
	
	1 to: self columnLength do: [ :rowIndex |
		groupValues := OrderedCollection new.
		aColumnIndexList do: [ :columnIndex |
			groupValues add: (self row: rowIndex column: columnIndex) ].
		(groupDict at: groupValues ifAbsentPut: [ OrderedCollection new ])
			add: rowIndex ].
	
	"{ {'sum' . 1 . [ :values | values inject: 0 into: [ :total :next | total + next ]]} }"
	
	groupedTable := SBTable new.
	
	rowCounter := 1.
	aColumnIndexList do: [ :index |
		groupedTable addColumnName: (self columnNames at: index ifAbsent: [ '' ]) ].
	aNameColumnIndexBlockCollection do: [ :tuple |
		groupedTable addColumnName: tuple first ].
	
	groupDict keysAndValuesDo: [ :keyCollection :rowIndices |
		groupedTable addRowWithSize: aColumnIndexList size + aNameColumnIndexBlockCollection size.
		
		columnCounter := 1.
		keyCollection do: [ :key |
			groupedTable row: rowCounter column: columnCounter value: key.
			columnCounter := columnCounter + 1 ].
		
		aNameColumnIndexBlockCollection do: [ :currentTuple |
			groupedTable
				row: rowCounter
				column: columnCounter
				value: (currentTuple third value:
					(rowIndices collect: [ :rowIndex |
						self row: rowIndex column: currentTuple second ]))
				raw: false.
			columnCounter := columnCounter + 1 ].
		
		rowCounter := rowCounter + 1 ].
	
	^ groupedTable