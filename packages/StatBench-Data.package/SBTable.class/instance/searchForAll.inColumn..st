table management
searchForAll: aValue inColumn: aColumn
	| column rowDictionary searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	rowDictionary := Dictionary new.
	column := self columnAt: aColumn.
	1 to: column size do: [ :index |
		((column at: index) = searchValue)
			ifTrue: [ rowDictionary at: index put: (self rowAt: index) ]].
	^ rowDictionary