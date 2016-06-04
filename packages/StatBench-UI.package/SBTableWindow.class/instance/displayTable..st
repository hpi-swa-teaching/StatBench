display
displayTable: aTable
	self clearContents.
	self tableDisplay
		displayTable: aTable;
		position: self padding asPoint.
	self paneColor: self tableDisplay color.
	self fillScrollPane.
	self addMorph: self scrollPane frame: (0@0 corner: 1@1).
	