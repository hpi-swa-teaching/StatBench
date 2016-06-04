accessing
row: aRow column: aColumn value: aValue
	((aRow between: 1 and: self rows size) and: [ aColumn between: 1 and: (self rowAt: aRow) size ])
		ifTrue: [
			self columnNumberState at: aColumn put: ((self columnNumberState at: aColumn) and: [ self class isEntryANumber: aValue ]).
			(self rowAt: aRow) at: aColumn put: aValue ]