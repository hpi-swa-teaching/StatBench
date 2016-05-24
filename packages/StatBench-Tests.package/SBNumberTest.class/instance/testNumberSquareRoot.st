testing
testNumberSquareRoot
	<expectedFailure>
	| val |
	val := 5.5.
	self number: (SBNumber newFromNumber: val).
	self assert: self number sqrt = (SBNumber newFromNumber: val sqrt).
	
	val := 6.
	self number: (SBNumber newFromNumber: val).
	self assert: self number sqrt = (SBNumber newFromNumber: val sqrt).