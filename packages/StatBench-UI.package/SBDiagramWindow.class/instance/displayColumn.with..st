as yet unclassified
displayColumn: xValues with: yValues
	self clearContents.
	self contentMorph
		displayColumn: xValues withColumn: yValues;
		position: self padding asPoint.
	self paneColor: self contentMorph color.
	self
		fillScrollPane;
		updateContent.
	self addMorph: self scrollPane frame: (0@0 corner: 1@1)