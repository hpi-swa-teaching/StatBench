accessing
statDictionary
	^ statDictionary ifNil: [
		statDictionary := Dictionary new addAll: (
			self statFunctions collect: [ :functionSymbol |
				functionSymbol -> OrderedCollection new ]) ]