display
displayXValues: xValues yValues: yValues
	self contentMorph
		displayXValues: xValues yValues: yValues;
		position: self padding asPoint.
	self updateContent