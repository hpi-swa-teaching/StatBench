drawing
draw: domainCollection function: functionCollection at: aPoint
	self diagramProperties
		at: #domain put: domainCollection;
		at: #function put: functionCollection;
		at: #diagramPosition put: aPoint.
	self
		calculateDiagramSize;
		canvas: self diagramSizedCanvas;
		drawYAnnotation;
		drawXAnnotation;
		drawXYAxis;
		calculateMaxRange;
		drawDiagram.
	^ Dictionary newFrom: {
		#canvas -> self canvas .
		#canvasSize -> self canvasSize }