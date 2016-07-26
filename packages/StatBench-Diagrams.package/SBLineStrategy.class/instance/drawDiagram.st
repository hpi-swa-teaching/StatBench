drawing
drawDiagram
	| base toPoint diagramPosition fromPoints newFromPoints |
	diagramPosition := self diagram position.
	base := toPoint := self axisStartPoint.
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
					drawLine: diagramPosition + fromPoint
					to: diagramPosition + toPoint ]].
		fromPoints := newFromPoints ]