drawing
drawScatterDiagramOn: aCanvas
	| position base color |
	base := self axisStartPoint.
	(self domainForStateWithMultiples: true) do: [ :element |
		base := self hasNumericalScaling
			ifTrue: [ (self axisStartPoint x + (self entryWidth * element value)) @ self axisStartPoint y ]
			ifFalse: [ (base x + self entryWidth) @ self axisStartPoint y ].
		position := base - (0@(self yScaling * (self functionAt: element))).
		color := self colorForFactor: (self colorValues at: (self domain indexOf: element)).
		aCanvas
			line: self position + position + (0@1)
			to: self position + position
			width: self drawWidth
			color: color ].
		self drawLegendOn: aCanvas