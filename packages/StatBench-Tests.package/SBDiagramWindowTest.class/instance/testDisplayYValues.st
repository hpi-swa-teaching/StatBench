testing
testDisplayYValues
	| size values domain |
	values := { 2 . 1 }.
	self tableWindow: SBDiagramWindow new.
	self tableWindow
		contentMorph: SBDiagram newBarDiagram;
		updateContent.
	size := self tableWindow contentMorph extent.
	self tableWindow displayYValues: values.
	self assert: size < self tableWindow contentMorph extent.
	domain := self tableWindow contentMorph domain.
	1 to: domain size do: [ :index |
		self assert: index equals: (domain at: index) ]