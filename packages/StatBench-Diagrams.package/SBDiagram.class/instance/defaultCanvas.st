constants
defaultCanvas
	^ FormCanvas
		extent: self diagramSize
		depth: Display depth
		origin: self position
		clipRect: (Rectangle origin: self position corner: self diagramSize)