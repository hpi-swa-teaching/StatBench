conversion
changeToArbitraryPrecisionFloat
	self isAPFloat
		ifFalse: [
			self
				floatValue: (ArbitraryPrecisionFloat readFrom: self asString numBits: self defaultBitSize);
				isAPFloat: true ]