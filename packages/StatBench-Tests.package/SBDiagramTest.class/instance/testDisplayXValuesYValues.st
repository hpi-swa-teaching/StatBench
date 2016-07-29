testing
testDisplayXValuesYValues
	| xValues yValues |
	self diagram: SBDiagram newBarDiagram.
	xValues := { 1 . 13 . 6 . 5.5 . 3 . 9 . 7 }.
	yValues := { 8 . 3 . 2 . 2.2 . 23 . 17 . 9 }.
	self assert: self diagram contentMorph isNil.
	self diagram displayXValues: xValues yValues: yValues.
	self
		assert: self diagram domain equals: xValues;
		assert: self diagram contentMorph notNil