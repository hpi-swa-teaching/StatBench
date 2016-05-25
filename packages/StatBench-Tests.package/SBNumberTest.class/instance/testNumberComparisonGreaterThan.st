testing
testNumberComparisonGreaterThan
	| val |
	val := 5.5.
	self number: (SBNumber newFromNumber: val).
	val := 4.5.
	self
		assert: self number > (SBNumber newFromNumber: val);
		assert: self number > val.
		
	val := 1.
	self number: (SBNumber newFromNumber: val).
	val := 0.
	self
		assert: self number > (SBNumber newFromNumber: val);
		assert: self number > val