testing
testDrawXAnnotation
	| form sampleEnvironment position tempBoolean function |
	self strategy: (SBScatterStrategy newWith: { 1 . 2 . 3 }).
	function := Dictionary newFrom: { 1->{7} . 2->{13} . 3->{4.3} . 5->{17.8} }.
	self strategy diagramProperties at: #function put: function.
	self strategy diagramProperties at: #domain put: function keys.
	self strategy calculateDiagramSize.
	self strategy canvas: self strategy diagramSizedCanvas.
	self strategy drawXAnnotation.
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