display
fillStatDictionary
	| statValue |
	self clearStatDictionary.
	self statDictionary keysAndValuesDo: [ :key :value |
		1 to: self table rowLength do: [ :columnIndex |
			statValue := nil.
			((self table columnNumberState at: columnIndex) or: [ key = #detectFactors ])
				ifTrue: [ statValue := (self table perform: (key asString, 'ForColumn:') asSymbol with: columnIndex) ].
			value add: statValue ]].