accessing
floatValue
	^ floatValue ifNil: [ floatValue := ArbitraryPrecisionFloat readFrom: '0' numBits: self defaultBitSize ]