comparing
>= aNumber
	aNumber class = self class
		ifTrue: [ ^ self value >= aNumber value ]
		ifFalse: [ ^ self value >= aNumber ]