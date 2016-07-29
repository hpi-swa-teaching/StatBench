drawing
drawXYAxis
	self
		drawAxis: self diagramPosition + self axisStartPoint
		to: self diagramPosition + (self axisEndPoint x @ self axisStartPoint y);
		drawAxis: self diagramPosition + self axisStartPoint
		to: self diagramPosition + (self axisStartPoint x @ (self axisEndPoint y - self drawWidth + (self font height / 2)))