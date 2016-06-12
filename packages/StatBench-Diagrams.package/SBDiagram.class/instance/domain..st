accessing
domain: aCollection
	| collection |
	self hasNumericalDomain: true.
	aCollection do: [ :element |
		self hasNumericalDomain: (self hasNumericalDomain and: [ SBTable isEntryANumber: element asString ]) ].
	self hasNumericalDomain
		ifTrue: [
				collection := SortedCollection new.
				collection addAll: (aCollection collect: [ :element |
					element isString
						ifTrue: [ (SBNumber newFromString: element) literalValue ]
						ifFalse: [
							element class = SBNumber
								ifTrue: [ element literalValue ]
								ifFalse: [ element ]]]) ]
		ifFalse: [ collection := aCollection ].
	domain := collection