drawing
drawFunctionOn: aCanvas
	| position axisOffset base lastPoint start fromPoint toPoint |
	start := self axisStartPoint.
	base := start.
	lastPoint := base.
	axisOffset := self drawWidth - self defaultAxisLineWidth.
	self domain do: [ :element |
		self chooseNumericalLimits
			ifTrue: [ base := (start x + (self entryWidth * element)) @ self axisStartPoint y ]
			ifFalse: [ base := (base x + self entryWidth) @ self axisStartPoint y ].
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
		aCanvas
			line: self position + fromPoint
			to: self position + toPoint
			width: self drawWidth
			color: self defaultDiagramColor ]