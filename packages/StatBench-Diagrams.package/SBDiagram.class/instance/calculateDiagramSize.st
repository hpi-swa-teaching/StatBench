diagram properties
calculateDiagramSize
	| xFactor |
	self calculateEntryWidth.
	xFactor := self hasNumericalScaling
		ifTrue: [ SBStatFunctions max value: self domain ]
		ifFalse: [ self domain size ].
	self
		diagramSize: ((self entryWidth * xFactor) + self defaultDiagramOverdraw + self axisStartPoint x)@self diagramSize y;
		extent: self canvasSize.