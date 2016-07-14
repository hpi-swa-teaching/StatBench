display
updateContent
	self
		clearContents
		fillScrollPane.
	self window
		paneColor: self contentMorph color;
		addMorph: self scrollPane frame: (0@0 corner: 1@1)