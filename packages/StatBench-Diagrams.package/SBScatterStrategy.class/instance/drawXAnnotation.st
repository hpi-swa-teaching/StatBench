drawing
drawXAnnotation
	| textPosition axisOffset start annotation annotationExtent annotationPosition width range |
	range := self maxRangeForCollection: self domain.
	start := self axisStartPoint + (0@self annotationPadding).
	textPosition := start.
	1 to: self annotationInterval x do: [ :index |
		axisOffset := 0 asPoint.
		textPosition := start + ((range / self annotationInterval x * index * self entryWidth)@0).
		annotation := self scientificNotationFor: range /  self annotationInterval x * index * self entryWidth.
		width := self font widthOfString: annotation.
		annotationExtent := width @ self font height.
		annotationPosition := textPosition + axisOffset - ((annotationExtent x / 2)@0).
		(annotationPosition + annotationExtent) x < self axisEndPoint x
			ifTrue: [
				self
					drawString: annotation
					in: ((self diagram position + annotationPosition) extent: annotationExtent) ]]