testing
testFillFunctionForDomainAndValues
	| xValues yValues |
	self diagram: SBDiagram new.
	xValues := { 1 . 1 . 13 . 6 . 5.5 . 3 . 9 . 7 }.
	yValues := { 8 . 12 . 3 . 2 . 2.2 . 23 . 17 . 9 }.
	self diagram
		domain: xValues;
		fillFunctionForDomainAndValues: yValues.
	1 to: xValues size do: [ :index |
		self assert: ((self diagram function at: (xValues at: index)) includes: (yValues at: index)). ]