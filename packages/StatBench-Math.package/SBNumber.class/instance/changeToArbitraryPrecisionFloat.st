conversion
changeToArbitraryPrecisionFloat
	self isAPFloat
		ifFalse: [
			self
				floatValue: (ArbitraryPrecisionFloat readFrom: self intValue asString numBits: self defaultBitSize);
				isAPFloat: true ]