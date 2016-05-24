testing
testNumberComparisonLessOrEqual
	| val |
	val := 5.5.
	self number: (SBNumber newFromNumber: val).
	val := 6.5.
	self assert: self number <= (SBNumber newFromNumber: val).
	self assert: self number <= val.
	
	val := 2.
	self number: (SBNumber newFromNumber: val).
	self assert: self number <= (SBNumber newFromNumber: val).
	self assert: self number <= val.