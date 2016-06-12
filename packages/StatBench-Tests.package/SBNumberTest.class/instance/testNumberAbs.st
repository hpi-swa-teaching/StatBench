testing
testNumberAbs
	| val epsilon |
	epsilon := 10 raisedToInteger: -10.
	val := -11. 
	self
		number: (SBNumber newFromNumber: val);
		assert: self number abs = val abs.
	
	val := -113.13.
	self
		number: (SBNumber newFromNumber: val);
		assert: self number abs - val abs < epsilon