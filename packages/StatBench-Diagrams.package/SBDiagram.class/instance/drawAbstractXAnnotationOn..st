drawing
drawAbstractXAnnotationOn: aCanvas
	| textPosition axisOffset start annotation annotationExtent annotationPosition width range |
	(self hasNumericalDomain and: [ self hasNumericalScaling ])
		ifFalse: [ ^ self ].
	range := self maxRangeForCollection: self domain.
	start := self axisStartPoint + (0@self defaultAnnotationPadding).
	textPosition := start.
	1 to: self annotationInterval x do: [ :index |
		axisOffset := 0@0.
		textPosition := start + ((range / self annotationInterval x * index * self entryWidth)@0).
		annotation := self scientificNotationFor: range /  self annotationInterval x * index * self entryWidth.
		width := self defaultFont widthOfString: annotation.
		annotationExtent := width @ self defaultFont height.
		annotationPosition := textPosition + axisOffset - ((annotationExtent x / 2)@0).
		aCanvas 
			drawString: annotation
			in: ((self position + annotationPosition) extent: annotationExtent)
			font: self defaultFont 
			color: self defaultFontColor ]