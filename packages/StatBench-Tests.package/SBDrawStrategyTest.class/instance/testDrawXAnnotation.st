testing
testDrawXAnnotation
	| form sampleEnvironment position tempBoolean function |
	self strategy: SBDrawStrategy new.
	function := Dictionary newFrom: { 1->{7} . 2->{13} . 3->{4.3} . 5->{17.8} }.
	self strategy diagramProperties
		at: #function put: function;
		at: #domain put: function keys.
	self strategy
		calculateDiagramSize;
		canvas: self strategy diagramSizedCanvas;
		drawXAnnotation.
	form := self strategy canvas form.
	sampleEnvironment := self strategy canvasSize y - self strategy axisStartPoint y.
	self assert:
		((function keys collect: [ :value |
			tempBoolean := false.
			0 to: sampleEnvironment do: [ :epsilon | 
				position := self strategy axisStartPoint + (self strategy entryWidth * value@(epsilon + (self strategy axisLineWidth / 2))).
				tempBoolean := tempBoolean or: [ (form pixelValueAt: position) strictlyPositive ]].
			tempBoolean ])
		allSatisfy: [ :element |
			element ])