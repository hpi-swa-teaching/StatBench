testing
testNumberConversion
	| val |
	val := 5.5.
	self number: (SBNumber newFromFloat: val).
	self assert: self number asInteger = val asInteger.
	val := 2.
	self number: (SBNumber newFromInt: val).
	self assert: self number asUnpreciseFloat = val asFloat.
	val := '0.38128931289371'.
	self number: (SBNumber newFromString: val).
	self assert: (self number asStringWithPrecision: val size - 2) = val.
	val := '38128931289371'.
	self number: (SBNumber newFromString: val).
	self assert: (self number asStringWithPrecision: val size) = val