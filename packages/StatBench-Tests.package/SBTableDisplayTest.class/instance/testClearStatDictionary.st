testing
testClearStatDictionary
	| aDictionary |
	aDictionary := Dictionary new.
	aDictionary at: 1 put: {1} asOrderedCollection. 
	self tableDisplay statDictionary: aDictionary.
	self assert: ((self tableDisplay statDictionary at: 1) = {1} asOrderedCollection ).
	self tableDisplay clearStatDictionary.
	self assert: ((self tableDisplay statDictionary at: 1) = {} asOrderedCollection )
