testing
testDisplayXYValues
	| size |
	self tableWindow: SBDiagramWindow new.
	self tableWindow
		contentMorph: SBDiagram newBarDiagram;
		updateContent.
	size := self tableWindow contentMorph extent.
	self tableWindow displayXValues: { 4 . 5 } yValues: { 2 . 1 }.
	self assert: size < self tableWindow contentMorph extent