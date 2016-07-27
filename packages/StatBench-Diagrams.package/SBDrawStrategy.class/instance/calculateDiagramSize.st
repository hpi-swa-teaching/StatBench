data management
calculateDiagramSize
	| xFactor |
	self calculateEntryWidth.
	xFactor := self hasNumericalScaling
		ifTrue: [ SBStatFunctions max value: self domain ]
		ifFalse: [ self domain size ].
	self diagramProperties
		at: #diagramSize put: ((self entryWidth * xFactor) + self diagramOverdraw + self axisStartPoint x)@self diagramSize y