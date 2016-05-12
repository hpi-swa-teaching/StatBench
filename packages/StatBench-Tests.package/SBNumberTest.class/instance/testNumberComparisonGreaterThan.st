testing
testNumberComparisonGreaterThan
	| val |
	val := 5.5.
	self number: (SBNumber newFromFloat: val).
	val := 4.5.
	self assert: self number > (SBNumber newFromFloat: val).
	self assert: self number > val.
	
	val := 1.
	self number: (SBNumber newFromInt: val).
	val := 0.
	self assert: self number > (SBNumber newFromInt: val).
	self assert: self number > val