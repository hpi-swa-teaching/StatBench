drawing
drawBarDiagramOn: aCanvas
	| axisOffset base lastPoint fromPoint toPoint |
	base := self axisStartPoint.
	lastPoint := base.
	axisOffset := self drawWidth - self defaultAxisLineWidth.
	(self domainForStateWithMultiples: true) do: [ :element |
		base := (base x + self entryWidth)@self axisStartPoint y.
		(self functionAt: element) strictlyPositive
			ifTrue: [ base := base - (0@axisOffset) ].
		fromPoint := base.
		toPoint := base - (0@(self yScaling * (self functionAt: element))).
		(self functionAt: element) isZero
			ifFalse: [
				aCanvas
					line: self position + fromPoint
					to: self position + toPoint
					width: self drawWidth
					color: self defaultDiagramColor ]]