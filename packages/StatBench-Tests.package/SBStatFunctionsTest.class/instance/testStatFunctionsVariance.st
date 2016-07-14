testing
testStatFunctionsVariance
	| collection |
	collection := {6 . 3 . 8 . 2 . 1 . 7 . 4 . 9 . 5} asOrderedCollection.
	self assert: (SBStatFunctions variance value: collection) equals: 20/3