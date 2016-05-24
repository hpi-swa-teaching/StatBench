arithmetic
* aNumber
	^ aNumber class = self class
		ifTrue: [SBNumber newFromNumber: self value * aNumber value ]
		ifFalse: [ SBNumber newFromNumber: self value * aNumber ]