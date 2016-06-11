drawing
drawXYAxis
	self
		drawFrom: self defaultAxisStart to: self defaultAxisEnd x @ self defaultAxisStart y withWidth: self defaultAxisPenSize;
		drawFrom: self defaultAxisStart to: self defaultAxisStart x @ self defaultAxisEnd y withWidth: self defaultAxisPenSize