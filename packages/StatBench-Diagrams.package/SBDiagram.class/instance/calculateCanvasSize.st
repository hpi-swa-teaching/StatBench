diagram properties
calculateCanvasSize
	^ (self diagramSize x + self extraCanvasSpace x)@(self diagramSize y max: self extraCanvasSpace y)