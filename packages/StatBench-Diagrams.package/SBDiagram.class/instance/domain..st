accessing
domain: aCollection
	self hasNumericalDomain: true.
	aCollection do: [ :element |
		self hasNumericalDomain: (self hasNumericalDomain and: [ SBTable isEntryANumber: element asString ]) ].
	domain := self hasNumericalDomain
		ifTrue: [
				OrderedCollection newFrom: (aCollection collect: [ :element |
					element isString
						ifTrue: [ (SBNumber newFromString: element) literalValue ]
						ifFalse: [
							element class = SBNumber
								ifTrue: [ element literalValue ]
								ifFalse: [ element ]]]) ]
		ifFalse: [ aCollection ]