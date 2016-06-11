drawing
drawFunction
	| position axisOffset base |
	self diagramSize: ((self domain size + 1) * self entryWidth + self defaultAxisStart x)@ self diagramSize y.
	self
		form: self defaultForm;
		drawXYAxis.
	position := self defaultAxisStart.
	axisOffset := self defaultDiagramPenSize - self defaultAxisPenSize.
	self domain do: [ :element |
		position := (position x + self entryWidth) @ (self defaultAxisStart y - (self yScaling * (self functionAt: element))).
		(self functionAt: element) strictlyPositive
			ifTrue: [ base := position x @ (self defaultAxisStart y - axisOffset) ]
			ifFalse: [ base := position x @ (self defaultAxisStart y) ]. 
		self drawFrom: base to: position withWidth: self defaultDiagramPenSize ]