testing
testUpdateContents
	self diagramWindow: SBTableWindow new.
	self diagramWindow
		contentMorph: SBTableDisplay new;
		clearContents.
	self
		assert: self diagramWindow scrollPane scroller submorphs isEmpty;
		deny: (self diagramWindow window submorphs anySatisfy: [ :element |
			element class = ScrollPane ]).
	self diagramWindow updateContent.
	self
		assert: self diagramWindow scrollPane scroller submorphs notEmpty;
		assert: (self diagramWindow window submorphs anySatisfy: [ :element |
			element class = ScrollPane ])