testing
testNumberComparisonEqual
	| val |
	val := 5.5.
	self number: (SBNumber newFromNumber: val).
	self assert: self number = (SBNumber newFromNumber: val).
	self assert: self number = val.
	val := 2.
	self number: (SBNumber newFromNumber: val).
	self assert: self number = (SBNumber newFromNumber: val).
	self assert: self number = val.
	val := '1.123'.
	self number: (SBNumber newFromString: val).
	self assert: self number = (SBNumber newFromString: val).
	val := '1234'.
	self number: (SBNumber newFromString: val).
	self assert: self number = (SBNumber newFromString: val)