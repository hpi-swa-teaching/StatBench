testing
testScientificNotation
	self
		assert: (self diagram scientificNotationFor: 1) equals: '1.0e0';
		assert: (self diagram scientificNotationFor: 1023) equals: '1.023e3';
		assert: (self diagram scientificNotationFor: 0.12) equals: '1.2e-1';
		assert: (self diagram scientificNotationFor: -30) equals: '-3.0e1';
		assert: (self diagram scientificNotationFor: 1234.569) equals: '1.23457e3';
		assert: (self diagram scientificNotationFor: 1234.561) equals: '1.23457e3';
		assert: (self diagram scientificNotationFor: 1234.560) equals: '1.23456e3'