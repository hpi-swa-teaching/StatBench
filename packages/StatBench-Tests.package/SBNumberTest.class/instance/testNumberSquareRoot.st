testing
testNumberSquareRoot
	<expectedFailure>
	| val |
	val := 5.5.
	self number: (SBNumber newFromFloat: val).
	self assert: self number sqrt = (SBNumber newFromFloat: val sqrt).
	
	val := 6.
	self number: (SBNumber newFromFloat: val).
	self assert: self number sqrt = (SBNumber newFromFloat: val sqrt).