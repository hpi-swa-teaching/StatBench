drawing
drawOn: aCanvas
	super drawOn: self canvas.
	self reDraw
		ifTrue: [
			self
				calculateDiagramSize;
				canvas: self defaultCanvas;
				drawYAnnotationOn: self canvas;
				drawXAnnotationOn: self canvas;
				drawXYAxisOn: self canvas;
				drawFunctionOn: self canvas;
				reDraw: false;
				updateContent: (self canvas contentsOfArea: (Rectangle origin: 0@0 corner: self canvas extent)) ]