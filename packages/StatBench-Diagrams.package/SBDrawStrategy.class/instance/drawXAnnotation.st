drawing
drawXAnnotation
	| textPosition axisOffset start counter annotation annotationExtent annotationPosition width |
	start := self axisStartPoint + (0@self annotationPadding).
	textPosition := start.
	counter := 0.
	(self domainForStateWithMultiples: false) do: [ :element |
		axisOffset := 0@0.
		textPosition := self hasNumericalScaling
			ifTrue: [ start + ((element * self entryWidth)@0) ]
			ifFalse: [ textPosition + (self entryWidth@0) ].
		annotation := self hasNumericalDomain
			ifTrue: [ self scientificNotationFor: element ]
			ifFalse: [ element asString].
		"Todo: fix selection of values"
		(self functionAt: element) first positive
			ifFalse: [ axisOffset := 0@(0 - self axisLineWidth - self annotationPadding - self font height) ].
		width := self font widthOfString: annotation.
		annotationExtent := width@self font height.
		annotationPosition := textPosition + axisOffset - ((annotationExtent x / 2)@0).
		self hasNumericalDomain
			ifTrue: [
				self 
					drawString: annotation
					in: ((self diagramPosition  + annotationPosition) extent: annotationExtent) ]
			ifFalse: [
				self
					drawString: annotation
					on: self canvas
					at: self diagramPosition + annotationPosition
					extent: annotationExtent ].
		counter := counter + 1 ]