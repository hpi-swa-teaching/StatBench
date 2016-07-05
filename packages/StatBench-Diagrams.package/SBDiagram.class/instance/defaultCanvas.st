constants
defaultCanvas
	^ FormCanvas
		extent: self calculateCanvasSize
		depth: Display depth
		origin: self position
		clipRect: (Rectangle origin: self position corner: self calculateCanvasSize)