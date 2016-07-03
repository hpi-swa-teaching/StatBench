testing
testStatFunctionsStandardDeviation
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
	
	self assert: (SBStatFunctions standardDeviation value: collection) =  2.5819888974716116