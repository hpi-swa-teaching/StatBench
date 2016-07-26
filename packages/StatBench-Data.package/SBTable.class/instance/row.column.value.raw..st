accessing
row: aRowIndex column: aColumnIndex value: aValue raw: aBoolean
	| value |
	(self isOutOfBoundsRow: aRowIndex column: aColumnIndex)
		ifTrue: [ ^ self ].
	value := aBoolean
		ifTrue: [ aValue ]
		ifFalse: [ Number readArbitraryPrecisionFloatFrom: aValue asString ].
	self columnNumberState
		at: aColumnIndex
		put: ((self columnNumberState at: aColumnIndex)
			and: [ Number isStringANumber: value asString ]
			and: [ value isString not ]).
	(self rowAt: aRowIndex) at: aColumnIndex put: value