testing
testHasNumericalScaling
	self strategy domain: { 1 . 2 . 3 . 4 . 5 }.
	self assert: self strategy hasNumericalScaling.
	self strategy domain: {'a' . 'b' . 'c'}.
	self deny: self strategy hasNumericalScaling