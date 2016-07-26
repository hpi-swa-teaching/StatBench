display
fillStatDictionary
	| statValue |
	self clearStatDictionary.
	self statDictionary keysAndValuesDo: [ :key :value |
		1 to: self table rowLength do: [ :columnIndex |
			statValue := self table perform: (key asString, 'ForColumn:') asSymbol with: columnIndex.
			(statValue isFraction and: [ statValue isInteger not ])
				ifTrue: [ statValue := statValue asFloat ].
			value add: statValue ]].