testing
testYDisplayValues
	| size values domain |
	values := { 2 . 1 }.
	self diagramWindow: SBDiagramWindow new.
	self diagramWindow
		contentMorph: SBDiagram newBarDiagram;
		updateContent.
	size := self diagramWindow contentMorph extent.
	self diagramWindow displayYValues: values.
	self assert: size < self diagramWindow contentMorph extent.
	domain := self diagramWindow contentMorph domain.
	1 to: domain size do: [ :index |
		self assert: index equals: (domain at: index) ]