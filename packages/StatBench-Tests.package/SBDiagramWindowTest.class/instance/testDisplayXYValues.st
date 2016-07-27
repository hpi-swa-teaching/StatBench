testing
testDisplayXYValues
	| size |
	self diagramWindow: SBDiagramWindow new.
	self diagramWindow
		contentMorph: SBDiagram newBarDiagram;
		updateContent.
	size := self diagramWindow contentMorph extent.
	self diagramWindow displayXValues: { 4 . 5 } yValues: { 2 . 1 }.
	self assert: size < self diagramWindow contentMorph extent