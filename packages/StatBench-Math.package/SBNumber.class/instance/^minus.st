arithmetic
- aNumber
	^ (self isAPFloat not and: [ aNumber isInteger ])
		ifTrue: [ SBNumber newFromInt: self value - aNumber ]
		ifFalse: [ SBNumber newFromFloat: self value - aNumber ]