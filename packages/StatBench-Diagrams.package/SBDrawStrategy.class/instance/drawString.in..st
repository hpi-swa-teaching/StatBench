drawing
drawString: aString in: boundsRect
	self canvas 
		drawString: aString
		in: boundsRect
		font: self font 
		color: self fontColor 