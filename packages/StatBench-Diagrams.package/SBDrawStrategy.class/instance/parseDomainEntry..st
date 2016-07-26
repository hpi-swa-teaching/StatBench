data management
parseDomainEntry: anEntry
	^ anEntry isString
		ifTrue: [ Number readArbitraryPrecisionFloatFrom: anEntry ]
		ifFalse: [ anEntry ]