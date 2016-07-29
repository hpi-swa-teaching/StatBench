testing
testHasNumericalScaling
	self strategy: SBBarStrategy new.
	self assert: self strategy hasNumericalScaling equals: false.
	
	self strategy: SBLineStrategy new.
	self strategy domain: {1 . 2 . 3 . 4 . 5} asOrderedCollection.
	self assert: self strategy hasNumericalScaling equals: true.
	self strategy domain: {'a' . 'b' . 'c'} asOrderedCollection.
	self assert: self strategy hasNumericalScaling equals: false.
	
	self strategy: SBScatterStrategy new.
	self strategy domain: {1 . 2 . 3 . 4 . 5} asOrderedCollection.
	self assert: self strategy hasNumericalScaling equals: true.
	self strategy domain: {'a' . 'b' . 'c'} asOrderedCollection.
	self assert: self strategy hasNumericalScaling equals: false