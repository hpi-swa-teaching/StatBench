aggregation
tupleForColumn: aColumnIndex name: aString function: aBlock
	^ { aString . aColumnIndex . aBlock } asOrderedCollection