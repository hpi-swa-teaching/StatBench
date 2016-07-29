drawing
drawYAnnotation
	| textPosition annotationValue maxWidth annotation annotationExtent graphWidthOffset |
	self calculateMaxRange.
	annotationValue := (self maxRange / self annotationInterval y) asFloat.
	maxWidth := 0.
	1 to: self annotationInterval y do: [ :index |
		maxWidth := maxWidth max: (self font widthOfString: (annotationValue * index) asString) ].
	maxWidth := maxWidth + self annotationPadding.
	self diagramProperties at: #axisStartPoint put: self defaultAxisStartPoint + ((maxWidth + self annotationPadding)@0).
	self calculateDiagramSize.
	textPosition := 0 asPoint.
	graphWidthOffset := self drawWidth + (self font height / 2).
	1 to: self annotationInterval y do: [ :index |
		annotation := self scientificNotationFor: (annotationValue * index).
		annotationExtent := (self font widthOfString: annotation) @ self font height.
		textPosition := self axisStartPoint
			- ((annotationExtent x + self annotationPadding)@(self drawArea y / self annotationInterval y * index + graphWidthOffset)).
		self
			drawString: annotation
			in: ((self diagramPosition + textPosition) extent: annotationExtent) ]