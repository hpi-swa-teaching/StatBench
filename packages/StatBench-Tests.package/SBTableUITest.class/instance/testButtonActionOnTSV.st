testing
testButtonActionOnTSV
	self tableUI: SBTableUI new.
	self tableUI
		filePath: 'test.tsv';
		buttonAction.
	self assert: (World submorphs includes: self tableUI diagramWindow window).
	World removeMorph: self tableUI diagramWindow window.
	self deny: (World submorphs includes: self tableUI diagramWindow window)