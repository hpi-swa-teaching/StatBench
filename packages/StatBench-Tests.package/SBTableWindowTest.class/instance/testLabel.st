testing
testLabel
	| label |
	self tableWindow: SBTableWindow new.
	label := 'test_label'.
	self tableWindow label: label.
	self assert: self tableWindow window label equals: label