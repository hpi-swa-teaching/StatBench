testing
testParseDomainEntry
	self 
		assert: (self strategy parseDomainEntry: '1.2') = 1.2;
		assert: (self strategy parseDomainEntry: '5.446') = 5.446;
		assert: (self strategy parseDomainEntry: '10') = 10;
		assert: (self strategy parseDomainEntry: '1') = 1.0