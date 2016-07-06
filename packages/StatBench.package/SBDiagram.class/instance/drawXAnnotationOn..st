drawing
drawXAnnotationOn: aCanvas
	| textPosition axisOffset start counter annotation annotationExtent annotationPosition width |
	self diagramType = #scatter
		ifTrue: [
			self drawAbstractXAnnotationOn: aCanvas.
			^ self ].
	start := self axisStartPoint + (0@self defaultAnnotationPadding).
	textPosition := start.
	counter := 0.
	(self domainForStateWithMultiples: false) do: [ :element |
		axisOffset := 0@0.
		self hasNumericalScaling
			ifTrue: [
				textPosition := start + ((element * self entryWidth)@0) ]
			ifFalse: [
				textPosition := textPosition + (self entryWidth@0) ].
		self hasNumericalDomain
			ifTrue: [ annotation := self scientificNotationFor: element ]
			ifFalse: [ annotation := element asString].
		(self functionAt: element) positive
			ifFalse: [ axisOffset := 0@(0 - self defaultAxisLineWidth - self defaultAnnotationPadding - self defaultFont height) ].
		width := self defaultFont widthOfString: annotation.
		annotationExtent := width@self defaultFont height.
		annotationPosition := textPosition + axisOffset - ((annotationExtent x / 2)@0).
		self hasNumericalDomain
			ifTrue: [
				aCanvas 
					drawString: annotation
					in: ((self position  + annotationPosition) extent: annotationExtent)
					font: self defaultFont 
					color: self defaultFontColor ]
			ifFalse: [
				self
					drawString: annotation
					on: aCanvas
					at: self position + annotationPosition
					extent: annotationExtent ].
		counter := counter + 1 ]