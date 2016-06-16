math functions
mathematicalMedianForSortedCollection: aCollection
	^ aCollection size \\ 2 = 0
		ifTrue:  [ (aCollection at: (aCollection size / 2)) + (aCollection at: (aCollection size / 2 + 1)) / 2 ]
		ifFalse: [ aCollection median ]