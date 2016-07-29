testing
testCalculateMaxXWidth
	self
		strategy: SBDrawStrategy new;
		assert: (self strategy calculateMaxXWidthFor: 4) equals: 103;
		assert: (self strategy calculateMaxXWidthFor: 55) equals: 8;
		assert: (self strategy calculateMaxXWidthFor: 5.5) equals: 108;
		assert: (self strategy calculateMaxXWidthFor: 500) equals: 1
		