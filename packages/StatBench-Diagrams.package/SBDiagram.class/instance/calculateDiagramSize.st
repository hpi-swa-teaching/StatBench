drawing
calculateDiagramSize
	| xFactor |
	self chooseNumericalLimits
		ifTrue: [
			xFactor := self domain detectMax: [ :element |
				element ]]
		ifFalse: [ xFactor := self domain size ].
	self diagramSize: ((self entryWidth * xFactor) + self defaultDiagramOverdraw + self defaultAxisStart x)@ self diagramSize y