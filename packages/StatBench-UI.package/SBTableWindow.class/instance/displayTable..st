display
displayTable: aTable
	self clearContents.
	self contentMorph
		displayTable: aTable;
		position: self padding asPoint.
	self paneColor: self contentMorph color.
	self fillScrollPane.
	self addMorph: self scrollPane frame: (0@0 corner: 1@1)