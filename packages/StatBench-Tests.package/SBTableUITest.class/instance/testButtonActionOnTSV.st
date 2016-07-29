testing
testButtonActionOnTSV
	self tableUI: SBTableUI new.
	self tableUI
		filePath: 'test.tsv';
		buttonAction.
	self assert: (World submorphs includes: self tableUI tableWindow window).
	World removeMorph: self tableUI tableWindow window.
	self deny: (World submorphs includes: self tableUI tableWindow window)