testing
testDrawYAnnotation
	| form annotationOnYAxis sampleEnvironment position function |
	self strategy: SBDrawStrategy new.
	function := Dictionary newFrom: { 1->{7} . 2->{13} . 3->{4.3} . 5->{17.8} }.
	self strategy diagramProperties
		at: #function put: function;
		at: #domain put: function keys.
	self strategy
		calculateDiagramSize;
		canvas: self strategy diagramSizedCanvas;
		drawYAnnotation.
	form := self strategy canvas form.
	sampleEnvironment := self strategy axisStartPoint x - (self strategy axisLineWidth / 2) - 1.
	1 to: self strategy annotationInterval y do: [ :index |
		annotationOnYAxis := false.
		0 to: sampleEnvironment do: [ :epsilon |
			position := epsilon@(self strategy axisStartPoint y - (self strategy drawArea y / self strategy annotationInterval y * index)).
			annotationOnYAxis := annotationOnYAxis or: [ (form pixelValueAt: position) strictlyPositive ]].
		self assert: annotationOnYAxis ]