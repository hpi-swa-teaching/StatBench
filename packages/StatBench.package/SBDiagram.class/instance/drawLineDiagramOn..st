drawing
drawLineDiagramOn: aCanvas
	| base fromPoint toPoint |
	base := self axisStartPoint.
	toPoint := base.
	(self domainForStateWithMultiples: true) do: [ :element |
		base := self hasNumericalScaling
			ifTrue: [ (self entryWidth * element + self axisStartPoint x)@self axisStartPoint y ]
			ifFalse: [ (base x + self entryWidth)@self axisStartPoint y ]. 
		fromPoint := toPoint.
		
		(self functionAt: element) do: [ :value |
			toPoint := base - (0@(self yScaling * value)).
			aCanvas
				line: self position + fromPoint
				to: self position + toPoint
				width: self drawWidth
				color: self defaultDiagramColor ]]