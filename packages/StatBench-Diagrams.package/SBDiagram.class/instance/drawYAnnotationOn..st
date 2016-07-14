drawing
drawYAnnotationOn: aCanvas
	| textPosition annotationValue maxWidth annotation annotationExtent graphWidthOffset |
	annotationValue := (self maxRange / self annotationInterval y) asFloat.
	maxWidth := 0.
	1 to: self annotationInterval y do: [ :index |
		maxWidth := maxWidth max: (self defaultFont widthOfString: (annotationValue * index) asString) ].
	maxWidth := maxWidth + self defaultAnnotationPadding.
	self
		axisStartPoint: self defaultAxisStartPoint + ((maxWidth + self defaultAnnotationPadding)@0);
		calculateDiagramSize.

	textPosition := 0@0.
	graphWidthOffset := self defaultDrawWidth + (self defaultFont height / 2).
	1 to: self annotationInterval y do: [ :index |
		annotation := self scientificNotationFor: (annotationValue * index).
		annotationExtent := (self defaultFont widthOfString: annotation) @ self defaultFont height.
		textPosition := self axisStartPoint - ((annotationExtent x + self defaultAnnotationPadding)@(self drawArea y / self annotationInterval y * index + graphWidthOffset)).
		aCanvas 
			drawString: annotation
			in: ((self position + textPosition) extent: annotationExtent)
			font: self defaultFont 
			color: self defaultFontColor ]