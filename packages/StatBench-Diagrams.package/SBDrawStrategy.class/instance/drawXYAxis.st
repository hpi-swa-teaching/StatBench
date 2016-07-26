drawing
drawXYAxis
	| yGraphWidthOffset diagramPosition |
	yGraphWidthOffset := self drawWidth + (self font height / 2).
	diagramPosition := self diagram position.
	self
		drawAxis: diagramPosition + self axisStartPoint
		to: diagramPosition + (self axisEndPoint x @ self axisStartPoint y);
		drawAxis: diagramPosition + self axisStartPoint
		to: diagramPosition + (self axisStartPoint x @ (self axisEndPoint y - yGraphWidthOffset))