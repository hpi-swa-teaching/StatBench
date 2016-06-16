display
displayColumn: xValues with: yValues
	self contentMorph
		displayColumn: xValues withColumn: yValues;
		position: self padding asPoint.
	self updateContent