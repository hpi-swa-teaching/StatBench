testing
testNumberSquared
	| val |
	val := 5.5.
	self number: (SBNumber newFromFloat: val).
	self assert: self number squared = (SBNumber newFromFloat: val squared).
	
	val := 6.
	self number: (SBNumber newFromFloat: val).
	self number squared = (SBNumber newFromInt: val squared)