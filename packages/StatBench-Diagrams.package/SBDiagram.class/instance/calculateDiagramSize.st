diagram properties
calculateDiagramSize
	| xFactor |
	self calculateEntryWidth.
	self chooseNumericalLimits
		ifTrue: [
			xFactor := self domain detectMax: [ :element |
				element ]]
		ifFalse: [ xFactor := self domain size ].
	self
		diagramSize: ((self entryWidth * xFactor) + self defaultDiagramOverdraw + self axisStartPoint x)@ self diagramSize y;
		extent: self diagramSize.