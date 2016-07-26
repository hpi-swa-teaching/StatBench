drawing
draw: domainCollection function: functionCollection
	self diagramProperties
		at: #domain put: domainCollection;
		at: #function put: functionCollection.
	^ self
		calculateDiagramSize;
		canvas: self diagramSizedCanvas;
		drawYAnnotation;
		drawXAnnotation;
		drawXYAxis;
		calculateMaxRange;
		drawDiagram;
		canvas