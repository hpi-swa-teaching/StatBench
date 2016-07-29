testing
testClearContents
	| previousDisplay |
	self diagramWindow: SBTableWindow new.
	previousDisplay := SBTableDisplay new.
	self diagramWindow
		contentMorph: previousDisplay;
		clearContents;
		fillScrollPane.
	self assert: self diagramWindow scrollPane scroller submorphs notEmpty.
	self deny: (previousDisplay = self diagramWindow contentMorph).
	self diagramWindow clearContents.
	self assert: self diagramWindow scrollPane scroller submorphs isEmpty