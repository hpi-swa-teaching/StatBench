display
displayColumn: xValues withColumn: yValues
	self
		clearContents;
		domain: xValues;
		fillFunctionForDomainAndValues: yValues;
		drawFunction