testing
testLabel
	| label |
	self diagramWindow: SBTableWindow new.
	label := 'test_label'.
	self diagramWindow label: label.
	self assert: self diagramWindow window label equals: label