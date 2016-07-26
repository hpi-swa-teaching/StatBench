aggregation
groupByColumns: aColumnIndexList andCalculate: aNameColumnIndexBlockCollection
	| aggregatedTable |
	aggregatedTable := self
		createTableWithColumnNamesForColumns: aColumnIndexList
		tuples: aNameColumnIndexBlockCollection.
	aggregatedTable
		fillWith: (self createDictionaryFor: aColumnIndexList)
		tupleList: aNameColumnIndexBlockCollection
		from: self.
	^ aggregatedTable