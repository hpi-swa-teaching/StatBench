display
fillStatDictionary
	self clearStatDictionary.
	self statDictionary keysAndValuesDo: [ :key :value |
		1 to: self table rowLength do: [ :columnIndex |
			value add: (self table perform: (key asString, 'ForColumn:') asSymbol with: columnIndex) ]]