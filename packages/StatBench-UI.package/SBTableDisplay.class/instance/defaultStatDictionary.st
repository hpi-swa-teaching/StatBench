initialization
defaultStatDictionary
	| dictionary |
	dictionary := Dictionary new.
	^ dictionary
		addAll: (self statFunctions collect: [ :functionSymbol |
			functionSymbol -> OrderedCollection new ]);
		yourself