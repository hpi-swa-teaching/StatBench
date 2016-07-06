testing
testStatFunctionsMean
	| collection |
	collection := {6 . 3 . 8 . 2 . 1 . 7 . 4 . 9 . 5} asOrderedCollection.
	self assert: (SBStatFunctions mean value: collection) equals: 5