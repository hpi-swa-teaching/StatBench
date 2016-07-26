drawing
drawDiagram
	| position base color diagramPosition |
	diagramPosition := self diagram position.
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
				drawLine: diagramPosition + position
				to: diagramPosition + position ]].
		self drawLegend