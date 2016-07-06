testing
testStatFunctionsSum
	| collection |
	collection := {6 . 3 . 8 . 2 . 1 . 7 . 4 . 9 . 5} asOrderedCollection.
	self assert: (SBStatFunctions sum value: collection) equals: 45