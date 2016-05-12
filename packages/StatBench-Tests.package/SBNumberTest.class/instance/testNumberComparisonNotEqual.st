testing
testNumberComparisonNotEqual
	| val |
	val := 5.5.
	self number: (SBNumber newFromFloat: val).
	val := 4.
	self assert: self number ~= (SBNumber newFromFloat: val).
	self assert: self number ~= val.
	
	val := 2.
	self number: (SBNumber newFromInt: val).
	val := 1.
	self assert: self number ~= (SBNumber newFromInt: val).
	self assert: self number ~= val.
	
	val := '1.123'.
	self number: (SBNumber newFromString: val).
	val := '2.123'.
	self assert: self number ~= (SBNumber newFromString: val).
	
	val := '1234'.
	self number: (SBNumber newFromString: val).
	val := '5142'.
	self assert: self number ~= (SBNumber newFromString: val)