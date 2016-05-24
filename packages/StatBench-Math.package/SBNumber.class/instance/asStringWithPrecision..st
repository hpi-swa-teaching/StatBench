conversion
asStringWithPrecision: exponent
	| integerPartSize tmp |
	^ self isAPFloat
		ifTrue: [
			(self asUnpreciseFloat fractionPart asString size - 2 <= exponent)
				ifTrue: [ ^ self asUnpreciseFloat asString ]
				ifFalse: [
					integerPartSize := self asInteger asString size.
					tmp := (self floatValue mantissa * (10 raisedTo: exponent + integerPartSize - 2)
						bitShift: self floatValue biasedExponent) asString.
					self asInteger asString , '.',  tmp allButFirst: integerPartSize - 1 ]]
		ifFalse: [ self intValue asString ]