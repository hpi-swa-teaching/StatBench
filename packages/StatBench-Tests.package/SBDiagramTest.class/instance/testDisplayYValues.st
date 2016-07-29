testing
testDisplayYValues
	| xValues yValues |
	self diagram: SBDiagram newBarDiagram.
	yValues := { 8 . 3 . 2 . 2.2 . 23 . 17 . 9 }.
	xValues := (SBTable indexCollectionFor: yValues).
	self assert: self diagram contentMorph isNil.
	self diagram displayXValues: xValues yValues: yValues.
	self
		assert: self diagram domain equals: xValues;
		assert: self diagram contentMorph notNil.