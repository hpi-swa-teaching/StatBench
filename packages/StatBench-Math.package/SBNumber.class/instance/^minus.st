arithmetic
- aNumber
	^ aNumber class = self class
		ifTrue: [ self class newFromNumber: self value - aNumber value ]
		ifFalse: [ self class newFromNumber: self value - aNumber ]