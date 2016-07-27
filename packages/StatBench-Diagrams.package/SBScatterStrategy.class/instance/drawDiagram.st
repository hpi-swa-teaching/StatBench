drawing
drawDiagram
	| position base color |
	base := self axisStartPoint.
	(self domainForStateWithMultiples: true) do: [ :element |
		base := self hasNumericalScaling
			ifTrue: [ (self entryWidth * element + self axisStartPoint x)@self axisStartPoint y ]
			ifFalse: [ (base x + self entryWidth)@self axisStartPoint y ].
		color := self colorForFactor: (self colorValues at: (self domain indexOf: element)).
		(self functionAt: element) do: [ :value |
			position := base - (0@(self yScaling * value)).
			self diagramProperties at: #diagramColor put: color.
			self
				drawLine: self diagramPosition + position
				to: self diagramPosition + position ]].
		self drawLegend