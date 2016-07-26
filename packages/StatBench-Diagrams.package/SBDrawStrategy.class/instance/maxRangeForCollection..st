data management
maxRangeForCollection: aCollection
	| range |
	range := SBStatFunctions max value: aCollection.
	range strictlyPositive
		ifFalse: [ self error: 'Negative max value: ', range asString ].
	^ (range / (10 raisedToInteger: range log floor)) ceiling * (10 raisedToInteger: range log floor)