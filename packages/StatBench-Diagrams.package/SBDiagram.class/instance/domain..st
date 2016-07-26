accessing
domain: aCollection
	domain := aCollection"
	self hasNumericalDomain: true.
	aCollection do: [ :element |
		self hasNumericalDomain: (self hasNumericalDomain and: [ Number isStringANumber: element asString ]) ].
	domain := self hasNumericalDomain
		ifTrue: [
				OrderedCollection newFrom: (aCollection collect: [ :element |
					element isString
						ifTrue: [ Number readArbitraryPrecisionFloatFrom: element ]
						ifFalse: [ element ]]) ]
		ifFalse: [ aCollection ]"