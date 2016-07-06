testing
testStatFunctionsPapeMedian
	| collection |
	collection := {6 . 3 . 8 . 2 . 1 . 7 . 4 . 9 . 5 . 10 . 11} asOrderedCollection.
	self assert: (SBStatFunctions inSetMedian value: collection) equals: 6