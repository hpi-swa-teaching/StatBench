testing
testClearContents
	self diagramWindow: SBDiagramWindow new.
	self diagramWindow
		contentMorph: SBDiagram newBarDiagram;
		clearContents;
		fillScrollPane.
	self assert: self diagramWindow scrollPane scroller submorphs notEmpty.
	self diagramWindow clearContents.
	self assert: self diagramWindow scrollPane scroller submorphs isEmpty