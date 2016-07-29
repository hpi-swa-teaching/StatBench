data management
domainWithInjectivity: aBoolean
	^ (self hasNumericalScaling and: [ aBoolean not ])
		ifTrue: [ self domain asSet asOrderedCollection sorted ]
		ifFalse: [
			self hasNumericalDomain
				ifTrue: [ self sortedDomain ]
				ifFalse: [ self domain ]]