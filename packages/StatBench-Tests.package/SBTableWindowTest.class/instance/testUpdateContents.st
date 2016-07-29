testing
testUpdateContents
	self tableWindow: SBTableWindow new.
	self tableWindow
		contentMorph: SBTableDisplay new;
		clearContents.
	self
		assert: self tableWindow scrollPane scroller submorphs isEmpty;
		deny: (self tableWindow window submorphs anySatisfy: [ :element |
			element class = ScrollPane ]).
	self tableWindow updateContent.
	self
		assert: self tableWindow scrollPane scroller submorphs notEmpty;
		assert: (self tableWindow window submorphs anySatisfy: [ :element |
			element class = ScrollPane ])