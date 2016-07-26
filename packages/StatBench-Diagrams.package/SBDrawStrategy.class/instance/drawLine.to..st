drawing
drawLine: start to: end
	self canvas
		line: start
		to: end
		width: self drawWidth
		color: self diagramColor