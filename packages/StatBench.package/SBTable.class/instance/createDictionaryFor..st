aggregation
createDictionaryFor: aColumnIndexList
	| dictionary key |
	dictionary := Dictionary new.
	1 to: self columnLength do: [ :rowIndex |
		key := OrderedCollection newFrom:
			(aColumnIndexList collect: [ :columnIndex |
				self row: rowIndex column: columnIndex ]).
		(dictionary at: key ifAbsentPut: [ OrderedCollection new ])
			add: rowIndex ].	
	^ dictionary