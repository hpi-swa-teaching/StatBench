drawing
drawDiagram
	| axisOffset base fromPoint toPoint diagramPosition |
	diagramPosition := self diagram position.
	base := self axisStartPoint.
	axisOffset := self drawWidth - self axisLineWidth.
	(self domainForStateWithMultiples: true) do: [ :element |
		(self functionAt: element) do: [ :value |
			base := (base x + self entryWidth)@self axisStartPoint y.
			fromPoint := base.
			value strictlyPositive
				ifTrue: [ fromPoint := fromPoint - (0@axisOffset) ].
			toPoint := fromPoint - (0@(self yScaling * value)).
			value isZero
				ifFalse: [
					self
						drawLine: diagramPosition + fromPoint
						to: diagramPosition + toPoint ]]]