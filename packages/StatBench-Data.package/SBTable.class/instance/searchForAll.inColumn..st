column functions
searchForAll: aValue inColumn: aColumnIndex
	| column rowDictionary |
	rowDictionary := Dictionary new.
	column := self columnAt: aColumnIndex.
	1 to: column size do: [ :rowIndex |
		((column at: rowIndex) = aValue)
			ifTrue: [ rowDictionary at: rowIndex put: (self rowAt: rowIndex) ]].
	^ rowDictionary