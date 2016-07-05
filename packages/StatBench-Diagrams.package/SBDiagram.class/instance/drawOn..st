drawing
drawOn: aCanvas
	super drawOn: self canvas.
	self reDraw
		ifTrue: [
			self
				calculateDiagramSize;
				calculateLegendSize;
				canvas: self defaultCanvas;
				drawYAnnotationOn: self canvas;
				drawXAnnotationOn: self canvas;
				drawXYAxisOn: self canvas;
				drawFunctionOn: self canvas;
				reDraw: false;
				updateContent: (self canvas contentsOfArea: (Rectangle origin: self canvas origin corner: self canvas extent)) ]