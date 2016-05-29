accessing
statDictionary
	statDictionary ifNil: [
		statDictionary := Dictionary new.
		self statFunctions do: [ :functionSymbol |
			statDictionary add: functionSymbol -> OrderedCollection new ]].
	^ statDictionary