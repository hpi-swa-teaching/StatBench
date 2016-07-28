testing
testOpenWindow
	| values |
	values := { 2 . 1 }.
	self diagramWindow: SBDiagramWindow new.
	self diagramWindow
		contentMorph: SBDiagram newBarDiagram;
		displayYValues: values.
	self deny: (World submorphs includes: self diagramWindow window).
	self diagramWindow openWindow.
	self assert: (World submorphs includes: self diagramWindow window).
	World removeMorph: self diagramWindow window.
	self deny: (World submorphs includes: self diagramWindow window)