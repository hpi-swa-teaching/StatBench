drawing
drawXYAxisOn: aCanvas
	| yGraphWidthOffset |
	yGraphWidthOffset := self defaultDrawWidth + (self defaultFont height / 2).
	aCanvas
		line: self position + self axisStartPoint
			to: self position + (self axisEndPoint x @ self axisStartPoint y)
			width: self defaultAxisLineWidth
			color: self defaultAxisColor;
		line: self position + self axisStartPoint
			to: self position + (self axisStartPoint x @ (self axisEndPoint y - yGraphWidthOffset))
			width: self defaultAxisLineWidth
			color: self defaultAxisColor