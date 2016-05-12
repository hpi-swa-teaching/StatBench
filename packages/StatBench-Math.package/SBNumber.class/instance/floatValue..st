accessing
floatValue: aFloat
	| val |
	aFloat class = ArbitraryPrecisionFloat
		ifTrue: [ floatValue := aFloat ]
		ifFalse: [
			aFloat isFraction
				ifTrue: [ val := aFloat asFloat ]
				ifFalse: [ val := aFloat ].
			floatValue := ArbitraryPrecisionFloat readFrom: val asString numBits: self defaultBitSize ]