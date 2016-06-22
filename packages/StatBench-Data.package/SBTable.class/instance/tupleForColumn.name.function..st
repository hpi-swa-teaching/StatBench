aggregation
tupleForColumn: columnIndex name: aName function: block
	^ { aName . columnIndex . block } asOrderedCollection