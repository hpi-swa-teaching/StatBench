drawing
drawXAnnotation
	| morphPosition padding axisOffset |
	padding := 0@6.
	morphPosition := self defaultAxisStart + padding.
	self domain do: [ :element |
		axisOffset := 0@0.
		morphPosition := morphPosition + (self entryWidth@0).
		(self functionAt: element) strictlyPositive
			ifFalse: [ axisOffset := 0@(-1 * (self defaultAxisPenSize + padding y + 12)) ].
		self addAnnotationAt: self position + morphPosition + axisOffset with: element asString offsetScale: 0.5 ]