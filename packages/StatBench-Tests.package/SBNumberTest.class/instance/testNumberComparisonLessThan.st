testing
testNumberComparisonLessThan
	| val |
	val := 5.5.
	self number: (SBNumber newFromNumber: val).
	val := 6.5.
	self
		assert: self number < (SBNumber newFromNumber: val);
		assert: self number < val.
	
	val := 1.
	self number: (SBNumber newFromNumber: val).
	val := 2.
	self
		assert: self number < (SBNumber newFromNumber: val);
		assert: self number < val