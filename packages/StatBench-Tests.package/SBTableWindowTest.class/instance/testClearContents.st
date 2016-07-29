testing
testClearContents
	| previousDisplay |
	self tableWindow: SBTableWindow new.
	previousDisplay := SBTableDisplay new.
	self tableWindow
		contentMorph: previousDisplay;
		clearContents;
		fillScrollPane.
	self assert: self tableWindow scrollPane scroller submorphs notEmpty.
	self deny: (previousDisplay = self tableWindow contentMorph).
	self tableWindow clearContents.
	self assert: self tableWindow scrollPane scroller submorphs isEmpty