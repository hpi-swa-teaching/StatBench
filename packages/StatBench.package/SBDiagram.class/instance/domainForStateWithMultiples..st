data management
domainForStateWithMultiples: aBoolean
	^ (self hasNumericalScaling and: [ aBoolean not ])
		ifTrue: [ self domain asSet asOrderedCollection sorted ]
		ifFalse: [
			self hasNumericalDomain
				ifTrue: [ self sortedDomain ]
				ifFalse: [ self domain ]]