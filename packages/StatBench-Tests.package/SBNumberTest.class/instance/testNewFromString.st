testing
testNewFromString
	self
		assert: (SBNumber newFromString: '123') equals: (SBNumber newFromNumber: 123);
		should: [ SBNumber newFromString: '123ads' ] raise: Error 