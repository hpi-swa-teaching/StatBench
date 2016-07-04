testing
testNumberAbs
	| val1 val2 epsilon |
	epsilon := 10 raisedToInteger: -10.
	val1 := -11. 
	val2 := -113.13.
	self
		number: (SBNumber newFromNumber: val1);
		assert: self number abs = val1 abs;
		number: (SBNumber newFromNumber: val2);
		assert: self number abs - val2 abs < epsilon