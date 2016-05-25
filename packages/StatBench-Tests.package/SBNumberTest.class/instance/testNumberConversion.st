testing
testNumberConversion
	| val |
	val := 5.5.
	self
		number: (SBNumber newFromNumber: val);
		assert: self number asInteger = val asInteger.
	val := 2.
	self
		number: (SBNumber newFromNumber: val);
		assert: self number asUnpreciseFloat = val asFloat.
	val := '0.38128931289371'.
	self
		number: (SBNumber newFromString: val);
		assert: (self number asStringWithPrecision: val size - 2) = val.
	val := '38128931289371'.
	self
		number: (SBNumber newFromString: val);
		assert: (self number asStringWithPrecision: val size) = val