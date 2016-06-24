display
displayXValues: xValues yValues: yValues
	self
		domain: xValues;
		fillFunctionForDomainAndValues: yValues;
		calculateDiagramSize;
		canvas: self defaultCanvas;
		redrawContent;
		drawOn: self canvas