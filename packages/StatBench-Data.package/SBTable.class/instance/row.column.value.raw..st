accessing
row: aRow column: aColumn value: aValue raw: aBoolean
	| value |
	((aRow between: 1 and: self columnLength) and: [ aColumn between: 1 and: (self rowAt: aRow) size ])
		ifFalse: [ ^ self ].
	value := aValue.
	aBoolean
		ifFalse: [
			value isString
				ifTrue: [ value := SBNumber newFromString: value ]
				ifFalse: [ value := SBNumber newFromNumber: value ]].
	self columnNumberState at: aColumn put: ((self columnNumberState at: aColumn) and: [ self class isEntryANumber: value ] and: [ value isString not ]).
	(self rowAt: aRow) at: aColumn put: value