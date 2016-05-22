comparing
> aNumber
	aNumber class = self class
		ifTrue: [ ^ super > aNumber ]
		ifFalse: [ ^ self value > aNumber ]