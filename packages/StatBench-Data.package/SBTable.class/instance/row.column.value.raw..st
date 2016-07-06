accessing
row: aRow column: aColumn value: aValue raw: aBoolean
	| value |
	((aRow between: 1 and: self columnLength) and: [ aColumn between: 1 and: (self rowAt: aRow) size ])
		ifFalse: [ ^ self ].
	value := aBoolean
		ifTrue: [ aValue ]
		ifFalse: [ Number readArbitraryPrecisionFloatFrom: aValue asString ].
	self columnNumberState
		at: aColumn
		put: ((self columnNumberState at: aColumn) and: [ Number isStringANumber: value asString ] and: [ value isString not ]).
	(self rowAt: aRow) at: aColumn put: value