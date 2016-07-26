testing
testLineDiagram
	| values form strategy position |
	self diagram: SBDiagram newLineDiagram.
	strategy := self diagram strategy.
	values := { 7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4 }.
	self diagram displayYValues: values.
	form := self diagram contentMorph imageForm.
	1 to: values size do: [ :index |
		position := strategy axisStartPoint + ((strategy entryWidth * index)@(-1 * strategy yScaling * (values at: index))).
		self
			assert: (form pixelValueAt: position) strictlyPositive;
			assert: (form pixelValueAt: position - (0@strategy yScaling)) isZero ]