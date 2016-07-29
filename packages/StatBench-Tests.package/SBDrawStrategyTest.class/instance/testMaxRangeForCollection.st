testing
testMaxRangeForCollection
	self 
		assert: (self strategy maxRangeForCollection: { 1 .  2 . 3 . 4 }) equals: 4;
		assert: (self strategy maxRangeForCollection: { 4 . 5 . 6 . 17 }) equals: 20;
		assert: (self strategy maxRangeForCollection: { 27 . 37 . 47 . 5 }) equals: 50;
		should: 	[ self strategy maxRangeForCollection: { -5 . -6 } ]  raise: Error.