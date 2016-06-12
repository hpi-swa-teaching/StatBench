drawing
drawFunction
	| position axisOffset base lastPoint start |
	self
		calculateDiagramSize;
		form: self defaultForm;
		drawXYAxis.
	start := self defaultAxisStart.
	base := start.
	lastPoint := base.
	axisOffset := self defaultDrawWidth - self defaultAxisPenSize.
	self domain do: [ :element |
		self chooseNumericalLimits
			ifTrue: [ base := (start x + (self entryWidth * element)) @ self defaultAxisStart y ]
			ifFalse: [ base := (base x + self entryWidth) @ self defaultAxisStart y ].
		position := base - (0@(self yScaling * (self functionAt: element))).
		self diagramType = #bar
			ifTrue: [
				(self functionAt: element) strictlyPositive
					ifTrue: [ base := base - (0@axisOffset) ].
				(self functionAt: element) isZero
					ifFalse: [ self drawFrom: base to: base - (0@(self yScaling * (self functionAt: element))) withWidth: self defaultDrawWidth ]].
		self diagramType = #line
			ifTrue: [
				self drawFrom: lastPoint to: position withWidth: self defaultDrawWidth.
				lastPoint := position ]]
		
	
"
| position axisOffset base lastPoint start |
	self diagramSize: ((self domain size + 2) * self entryWidth + self defaultAxisStart x)@ self diagramSize y.
	self
		form: self defaultForm;
		drawXYAxis.
	start := self defaultAxisStart.
	base := start.
	lastPoint := base.
	axisOffset := self defaultDrawWidth - self defaultAxisPenSize.
	self domain do: [ :element |
		self chooseNumericalLimits
			ifTrue: [ base := (start x + (self entryWidth * element)) @ self defaultAxisStart y ]
			ifFalse: [ base := (base x + self entryWidth) @ self defaultAxisStart y ].
		position := base - (0@(self yScaling * (self functionAt: element))).
		self diagramType = #bar
			ifTrue: [
				(self functionAt: element) strictlyPositive
					ifTrue: [ base := base - (0@axisOffset) ].
				(self functionAt: element) isZero
	//works			ifFalse: [ self drawFrom: base to: base - (0@(self yScaling * (self functionAt: element))) withWidth: self defaultDrawWidth ]].
	//doesnt work	ifFalse: [ self drawFrom: base to: position withWidth: self defaultDrawWidth ]].
		self diagramType = #line
			ifTrue: [
				self drawFrom: lastPoint to: position withWidth: self defaultDrawWidth.
				lastPoint := position ]]
		
"