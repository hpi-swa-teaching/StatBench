display
fillStatDictionary
	| statValue |
	self clearStatDictionary.
	self statDictionary keysAndValuesDo: [ :key :value |
		1 to: self table rowLength do: [ :columnIndex |
			statValue := ((self table columnNumberState at: columnIndex) or: [ key = #detectFactors ])
				ifTrue: [ (self table perform: (key asString, 'ForColumn:') asSymbol with: columnIndex) ].
			value add: statValue ]].