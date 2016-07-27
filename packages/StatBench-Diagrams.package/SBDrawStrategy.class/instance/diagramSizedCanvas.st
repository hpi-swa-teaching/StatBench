data management
diagramSizedCanvas
	^ FormCanvas
		extent: self canvasSize
		depth: Display depth
		origin: self diagramPosition
		clipRect: (Rectangle origin: self diagramPosition corner: self canvasSize)