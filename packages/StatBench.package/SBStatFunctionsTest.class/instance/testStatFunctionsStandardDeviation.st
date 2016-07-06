testing
testStatFunctionsStandardDeviation
	| collection |
	collection := {6 . 3 . 8 . 2 . 1 . 7 . 4 . 9 . 5} asOrderedCollection.
	self assert: (SBStatFunctions standardDeviation value: collection) equals: 2.5819888974716116