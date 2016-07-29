drawing
drawDiagram
	| axisOffset base fromPoint toPoint |
	base := self axisStartPoint.
	axisOffset := self drawWidth - self axisLineWidth.
	(self domainWithInjectivity: true) do: [ :element |
		(self functionAt: element) do: [ :value |
			base := (base x + self entryWidth)@self axisStartPoint y.
			fromPoint := base.
			value strictlyPositive
				ifTrue: [ fromPoint := fromPoint - (0@axisOffset) ].
			toPoint := fromPoint - (0@(self yScaling * value)).
			value isZero
				ifFalse: [
					self
						drawLine: self diagramPosition + fromPoint
						to: self diagramPosition + toPoint ]]]