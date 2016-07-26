drawing
drawAxis: start to: end
	self canvas
		line: start
		to: end
		width: self axisLineWidth
		color: self axisColor