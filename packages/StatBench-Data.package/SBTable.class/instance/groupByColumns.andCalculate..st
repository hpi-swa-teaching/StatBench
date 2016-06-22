aggregation
groupByColumns: aColumnIndexList andCalculate: aNameColumnIndexBlockCollection
	| groupedTable rowCounter columnCounter rowSize |
	groupedTable := self createTableWithColumnNamesFor: aColumnIndexList with: aNameColumnIndexBlockCollection.
	rowSize := aColumnIndexList size + aNameColumnIndexBlockCollection size.
	rowCounter := 1.
	(self createDictionaryFor: aColumnIndexList) keysAndValuesDo: [ :keyCollection :rowIndices |
		groupedTable addRowWithSize: rowSize.
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