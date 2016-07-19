drawing
drawBarDiagramOn: aCanvas
	| axisOffset base lastPoint fromPoint toPoint |
	base := self axisStartPoint.
	lastPoint := base.
	axisOffset := self drawWidth - self defaultAxisLineWidth.
	(self domainForStateWithMultiples: true) do: [ :element |
		base := (base x + self entryWidth)@self axisStartPoint y.
		fromPoint := base.
		(self functionAt: element) do: [ :value |
			value strictlyPositive
				ifTrue: [ fromPoint := fromPoint - (0@axisOffset) ].
			toPoint := fromPoint - (0@(self yScaling * value)).
			value isZero
				ifFalse: [
					aCanvas
						line: self position + fromPoint
						to: self position + toPoint
						width: self drawWidth
						color: self defaultDiagramColor ]]]