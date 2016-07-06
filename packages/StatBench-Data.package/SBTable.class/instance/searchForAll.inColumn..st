table management
searchForAll: aValue inColumn: aColumn
	| column rowDictionary |
	rowDictionary := Dictionary new.
	column := self columnAt: aColumn.
	1 to: column size do: [ :index |
		((column at: index) = aValue)
			ifTrue: [ rowDictionary at: index put: (self rowAt: index) ]].
	^ rowDictionary