drawing
drawXAnnotation
	| morphPosition axisOffset start counter |
	start := self defaultAxisStart + (0@self annotationPadding y).
	morphPosition := start.
	counter := 0.
	self domain do: [ :element |
		axisOffset := 0@0.
		self chooseNumericalLimits
			ifTrue: [ morphPosition := start + ((element * self entryWidth)@0). ]
			ifFalse: [ morphPosition := morphPosition + (self entryWidth@0). ].
		(self functionAt: element) positive
			ifFalse: [ axisOffset := 0@(-1 * (self defaultAxisPenSize + self annotationPadding y + 12)) ].
		counter \\ self annotationInterval x = 0
			ifTrue: [ self addAnnotationAt: self position + morphPosition + axisOffset content: element asString offsetScale: 0.5 width: self entryWidth ].
		counter := counter + 1 ]