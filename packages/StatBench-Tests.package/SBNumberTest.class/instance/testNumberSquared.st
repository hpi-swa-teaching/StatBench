testing
testNumberSquared
	| val |
	val := 5.5.
	self number: (SBNumber newFromNumber: val).
	self assert: self number squared = (SBNumber newFromNumber: val squared).
	
	val := 6.
	self number: (SBNumber newFromNumber: val).
	self number squared = (SBNumber newFromNumber: val squared)