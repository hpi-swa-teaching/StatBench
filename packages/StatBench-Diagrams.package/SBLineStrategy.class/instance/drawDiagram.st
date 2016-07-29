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
		"todo fix line with multiple y values"
		(self functionAt: element) do: [ :value |
			newFromPoints := OrderedCollection new.
			toPoint := base - (0@(self yScaling * value)).
			newFromPoints add: toPoint.
			fromPoints do: [ :fromPoint |
				self
					drawLine: self diagramPosition + fromPoint
					to: self diagramPosition + toPoint ]].
		fromPoints := newFromPoints ]