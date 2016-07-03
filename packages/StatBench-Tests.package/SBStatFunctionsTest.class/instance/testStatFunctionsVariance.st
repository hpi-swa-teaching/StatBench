testing
testStatFunctionsVariance
	| collection |
	collection := OrderedCollection new.
	collection add: 6.
	collection add: 3.
	collection add: 8.
	collection add: 2.
	collection add: 1.
	collection add: 7.
	collection add: 4.
	collection add: 9.
	collection add: 5.
	
	self assert: (SBStatFunctions variance value: collection) =   (20/3)