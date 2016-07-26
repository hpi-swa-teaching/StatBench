diagram properties
domain: aCollection
	| hasNumericalDomain |
	hasNumericalDomain := true.
	aCollection do: [ :element |
		hasNumericalDomain := hasNumericalDomain and: [ Number isStringANumber: element asString ]].
	self diagramProperties
		at: #hasNumericalDomain put: hasNumericalDomain;
		at: #domain put: (self hasNumericalDomain
			ifTrue: [
				aCollection collect: [ :element |
					self parseDomainEntry: element ]]
			ifFalse: [ aCollection ])