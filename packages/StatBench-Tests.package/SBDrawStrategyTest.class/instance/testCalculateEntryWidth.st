testing
testCalculateEntryWidth
	| value width |
	value := 1.
	width := 0.
	self strategy: SBDrawStrategy new.
	self assert: self strategy entryWidth equals: width.
	self strategy calculateEntryWidth.
	width := width + self strategy annotationPadding.
	self assert: self strategy entryWidth equals: width.
	self strategy
		domain: { value };
		calculateEntryWidth.
	width := width + (self strategy font widthOfString: (self strategy scientificNotationFor: value)).
	self assert: self strategy entryWidth equals: width