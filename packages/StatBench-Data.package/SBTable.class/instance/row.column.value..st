table management
row: aRow column: aColumn value: aValue
	((aRow between: 1 and: self rows size) and: [ aColumn between: 1 and: (self rowAt: aRow) size ])
		ifTrue: [ (self rowAt: aRow) at: aColumn put: aValue ]