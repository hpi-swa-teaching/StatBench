drawing
drawDiagram
	| base toPoint fromPoints newFromPoints |
	base := self axisStartPoint.
	toPoint := base.
	fromPoints := { self axisStartPoint }.
	(self domainForStateWithMultiples: true) do: [ :element |
		base := self hasNumericalScaling
			ifTrue: [ (self entryWidth * element + self axisStartPoint x)@self axisStartPoint y ]
			ifFalse: [ (base x + self entryWidth)@self axisStartPoint y ].
		newFromPoints := OrderedCollection new.
		(self functionAt: element) do: [ :value |
			toPoint := base - (0@(self yScaling * value)).
			newFromPoints add: toPoint.
			fromPoints select: [ :fromPoint |
				fromPoint x ~= base x ]
			thenDo: [ :fromPoint |
				self
					drawLine: self diagramPosition + fromPoint
					to: self diagramPosition + toPoint ]].
		fromPoints := newFromPoints ]