display
displayTable: aTable
	self clearContents.
	self contentMorph
		displayTable: aTable;
		position: self padding asPoint.
	self fillScrollPane.
	self window
		paneColor: self contentMorph color;
		addMorph: self scrollPane frame: (0@0 corner: 1@1)