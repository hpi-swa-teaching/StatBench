drawing
drawYAnnotation
	| morphPosition padding annotationValue |
	annotationValue := (self maxRange / self annotationInterval) asFloat.
	padding := 0@0.
	morphPosition := self defaultAxisStart - padding.
	1 to: self annotationInterval do: [ :index |
		morphPosition := morphPosition - (0@(self defaultDrawArea / self annotationInterval) y).
		self addAnnotationAt: self position + morphPosition with: (annotationValue * index) asString offsetScale: 1.0 ]