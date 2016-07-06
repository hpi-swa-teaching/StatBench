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
				perform: ('draw', self diagramType asString capitalized, 'DiagramOn:') asSymbol with: self canvas;
				reDraw: false;
				updateContent: (self canvas contentsOfArea: (Rectangle origin: self canvas origin corner: self canvas extent)) ]