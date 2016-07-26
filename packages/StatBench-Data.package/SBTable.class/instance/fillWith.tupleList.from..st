aggregation
fillWith: anAggregationDictionary tupleList: aTupleCollection from: aTable
	| rowCounter columnCounter |
	rowCounter := 1.
	anAggregationDictionary keysAndValuesDo: [ :keyCollection :rowIndices |
		self addRowWithSize: self columnNames size..
		columnCounter := 1.
		keyCollection do: [ :key |
			self row: rowCounter column: columnCounter value: key.
			columnCounter := columnCounter + 1 ].
		aTupleCollection do: [ :currentTuple |
			self
				row: rowCounter
				column: columnCounter
				value: (currentTuple third value:
					(rowIndices collect: [ :rowIndex |
						aTable row: rowIndex column: currentTuple second ]))
				raw: false.
			columnCounter := columnCounter + 1 ].
		rowCounter := rowCounter + 1 ]