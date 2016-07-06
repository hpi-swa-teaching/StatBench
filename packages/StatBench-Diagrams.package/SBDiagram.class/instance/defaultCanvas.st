constants
defaultCanvas
	^ FormCanvas
		extent: self canvasSize
		depth: Display depth
		origin: self position
		clipRect: (Rectangle origin: self position corner: self canvasSize)