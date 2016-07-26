data management
diagramSizedCanvas
	^ FormCanvas
		extent: self canvasSize
		depth: Display depth
		origin: self diagram position
		clipRect: (Rectangle origin: self diagram position corner: self canvasSize)