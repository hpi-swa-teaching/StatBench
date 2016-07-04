accessing
floatValueAsString: aString
	self floatValue: (ArbitraryPrecisionFloat readFrom: aString numBits: self defaultBitSize)