testing
hasNumericalScaling
	^ self hasNumericalDomain and: [ self diagramType = #line or: [ self diagramType = #scatter ]]