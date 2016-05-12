testing
testNumberMultiplication
	| val1 val2 |
	val1 := 5.5.
	val2 := 6.5.
	self number: (SBNumber newFromFloat: val1).
	self assert: (self number * val2) = (SBNumber newFromFloat: (val1 * val2)).
	val2 := 6.
	self assert: (self number * val2) = (SBNumber newFromFloat: (val1 * val2)).
	
	val1 := 4.
	val2 := 3.5.
	self number: (SBNumber newFromInt: val1).
	self assert: (self number * val2) = (SBNumber newFromFloat: (val1 * val2)).
	val2 := 3.
	self assert: (self number * val2) = (SBNumber newFromInt: (val1 * val2))