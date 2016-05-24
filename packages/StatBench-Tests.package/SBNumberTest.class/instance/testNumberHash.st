testing
testNumberHash
	| val |
	val := 1.
	self number: (SBNumber newFromNumber: val).
	self assert: self number hash = val hash.
	self assert: self number hash = (SBNumber newFromNumber: val) hash.
	self assert: self number hash = (SBNumber newFromNumber: val asFloat) hash.
	val := 2.0.
	self number: (SBNumber newFromNumber: val).
	self assert: self number hash = val hash.
	self assert: self number hash = (SBNumber newFromNumber: val) hash.
	self assert: self number hash = (SBNumber newFromNumber: val asInteger) hash