display
displayTable: aTable
	self
		clearContents;
		displayContentsOf: aTable;
		fillScrollPane;
		addContentToWindow