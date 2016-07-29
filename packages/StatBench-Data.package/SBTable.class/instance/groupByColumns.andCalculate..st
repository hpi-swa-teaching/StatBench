aggregation
groupByColumns: aColumnIndexList andCalculate: aNameColumnIndexBlockCollection
	| aggregatedTable |
	aggregatedTable := self class new.
	aggregatedTable
		addColumnNamesForColumns: aColumnIndexList
			tuples: aNameColumnIndexBlockCollection
			from: self;
		fillWith: (self createDictionaryFor: aColumnIndexList)
			tupleList: aNameColumnIndexBlockCollection
			from: self.
	^ aggregatedTable