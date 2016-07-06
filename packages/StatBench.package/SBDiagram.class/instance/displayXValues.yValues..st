display
displayXValues: xValues yValues: yValues
	self
		domain: xValues;
		fillFunctionForDomainAndValues: yValues;
		redrawContent;
		drawOn: self canvas