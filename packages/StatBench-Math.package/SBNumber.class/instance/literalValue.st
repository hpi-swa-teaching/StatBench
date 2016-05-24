accessing
literalValue
	^ self isAPFloat
		ifTrue: [
			(self asUnpreciseFloat fractionPart asString size - 2 <= self defaultPrecision)
				ifTrue: [ self floatValue ]
				ifFalse: [ self asUnpreciseFloat ]]
		ifFalse: [ self intValue ]