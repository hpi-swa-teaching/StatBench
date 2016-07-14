testing
testStatFunctionsMedian
	| collection |
	collection := {6 . 3 . 8 . 2 . 1 . 7 . 4 . 9 . 5 . 10} asOrderedCollection.
	self assert: (SBStatFunctions median value: collection) equals: 5.5