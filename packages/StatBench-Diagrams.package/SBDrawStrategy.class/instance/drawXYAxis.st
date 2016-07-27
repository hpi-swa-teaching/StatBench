drawing
drawXYAxis
	| yGraphWidthOffset |
	yGraphWidthOffset := self drawWidth + (self font height / 2).
	self
		drawAxis: self diagramPosition + self axisStartPoint
		to: self diagramPosition + (self axisEndPoint x @ self axisStartPoint y);
		drawAxis: self diagramPosition + self axisStartPoint
		to: self diagramPosition + (self axisStartPoint x @ (self axisEndPoint y - yGraphWidthOffset))