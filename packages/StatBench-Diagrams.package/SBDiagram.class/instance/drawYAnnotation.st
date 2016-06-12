drawing
drawYAnnotation
	| morphPosition annotationValue |
	annotationValue := (self maxRange / self annotationInterval y) asFloat.
	morphPosition := self defaultAxisStart - (self annotationPadding x@0).
	1 to: self annotationInterval y do: [ :index |
		morphPosition := morphPosition - (0@(self defaultDrawArea / self annotationInterval) y).
		self addAnnotationAt: self position + morphPosition content: (annotationValue * index) asString offsetScale: 1.0 width: morphPosition x ]