diagram properties
maxRangeForCollection: aCollection
	| range |
	range := SBStatFunctions max value: aCollection.
	range class = SBNumber
		ifTrue: [ range := range value ].
	range strictlyPositive
		ifFalse: [ self error: 'Negative max value: ', range asString ].
	^ (range / (10 raisedToInteger: range log floor)) ceiling * (10 raisedToInteger: range log floor)