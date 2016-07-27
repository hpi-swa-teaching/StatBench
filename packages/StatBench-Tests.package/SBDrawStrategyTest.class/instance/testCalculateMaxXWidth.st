testing
testCalculateMaxXWidth
	self 
		assert: (self strategy calculateMaxXWidthFor: 4) = 103;
		assert: (self strategy calculateMaxXWidthFor: 55) = 8;
		assert: (self strategy calculateMaxXWidthFor: 5.5) = 108;
		assert: (self strategy calculateMaxXWidthFor: 500) = 1
		