testing
testAxis
	| values form strategy |
	self diagram: SBDiagram newBarDiagram.
	strategy := self diagram strategy.
	values := { 7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4 }.
	self diagram displayYValues: values.
	form := self diagram contentMorph imageForm.
	self 
		assert: (form pixelValueAt: strategy axisStartPoint) strictlyPositive;
		assert: (form pixelValueAt: strategy axisStartPoint - (strategy axisLineWidth@0)) isZero;
		assert: (form pixelValueAt: strategy axisStartPoint + (0@strategy axisLineWidth)) isZero;
		assert: (form pixelValueAt: strategy axisEndPoint x@strategy axisStartPoint y) strictlyPositive;
		assert: (form pixelValueAt: strategy axisEndPoint - (10@0)) isZero