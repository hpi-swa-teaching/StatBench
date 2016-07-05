accessing
statDictionary
	^ statDictionary ifNil: [
		statDictionary := Dictionary new.
		statDictionary addAll: (
			self statFunctions collect: [ :functionSymbol |
				functionSymbol -> OrderedCollection new ]).
		statDictionary ]