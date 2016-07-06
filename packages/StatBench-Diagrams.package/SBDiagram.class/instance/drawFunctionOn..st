drawing
drawFunctionOn: aCanvas
	| position axisOffset base lastPoint start fromPoint toPoint color |
	start := self axisStartPoint.
	base := start.
	lastPoint := base.
	axisOffset := self drawWidth - self defaultAxisLineWidth.
	color := self defaultDiagramColor.
	(self domainForStateWithMultiples: true) do: [ :element |
		base := self hasNumericalScaling
			ifTrue: [ (start x + (self entryWidth * element value)) @ self axisStartPoint y ]
			ifFalse: [ (base x + self entryWidth) @ self axisStartPoint y ].
		position := base - (0@(self yScaling * (self functionAt: element))).
		self diagramType = #bar
			ifTrue: [
				(self functionAt: element) strictlyPositive
					ifTrue: [ base := base - (0@axisOffset) ].
				(self functionAt: element) isZero
					ifFalse: [
						fromPoint := base.
						toPoint := base - (0@(self yScaling * (self functionAt: element))) ]].
		self diagramType = #line
			ifTrue: [
				fromPoint := lastPoint.
				toPoint := position.
				lastPoint := position ].
		self diagramType = #scatter
			ifTrue: [
				fromPoint := position + (0@1).
				toPoint := position.
				color := self colorForFactor: (self colorValues at: (self domain indexOf: element)) ].
		aCanvas
			line: self position + fromPoint
			to: self position + toPoint
			width: self drawWidth
			color: color ].
	self diagramType = #scatter
		ifTrue: [ self drawLegendOn: aCanvas ]