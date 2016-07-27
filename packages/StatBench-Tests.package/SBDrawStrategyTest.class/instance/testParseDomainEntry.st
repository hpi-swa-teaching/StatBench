testing
testParseDomainEntry
	self 
		assert: (self strategy parseDomainEntry: '1.2') equals: 1.2;
		assert: (self strategy parseDomainEntry: '5.446') equals: 5.446;
		assert: (self strategy parseDomainEntry: '10') equals: 10;
		assert: (self strategy parseDomainEntry: '1') equals: 1.0