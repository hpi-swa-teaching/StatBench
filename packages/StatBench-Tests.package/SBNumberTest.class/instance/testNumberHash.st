testing
testNumberHash
	| val |
	val := 1.
	self number: (SBNumber newFromInt: val).
	self assert: self number hash = val hash.
	self assert: self number hash = (SBNumber newFromInt: val) hash.
	self assert: self number hash = (SBNumber newFromFloat: val asFloat) hash.
	val := 2.0.
	self number: (SBNumber newFromFloat: val).
	self assert: self number hash = val hash.
	self assert: self number hash = (SBNumber newFromFloat: val) hash.
	self assert: self number hash = (SBNumber newFromInt: val asInteger) hash