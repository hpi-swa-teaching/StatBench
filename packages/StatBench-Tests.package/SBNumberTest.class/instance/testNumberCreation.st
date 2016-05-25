testing
testNumberCreation
	| val |
	val := 5.5.
	self
		number: (SBNumber newFromNumber: val);
		assert: self number value = val.
	val := 2.
	self
		number: (SBNumber newFromNumber: val);
		assert: self number value = val.
	val := '1.123'.
	self
		number: (SBNumber newFromString: val);
		assert: (self number asStringWithPrecision: 3) = val.
	val := '1234'.
	self
		number: (SBNumber newFromString: val);
		assert: self number asString = val