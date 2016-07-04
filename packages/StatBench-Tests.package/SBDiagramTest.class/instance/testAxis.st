testing
testAxis
	| values diagram diagramForm |
	diagram := SBDiagram new.
	values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.
	diagram diagramType: #bar.
	diagram displayXValues: (SBTable indexCollectionFor: values) yValues: values.
	diagramForm := diagram contentMorph imageForm.
	self 
		assert: (diagramForm pixelValueAt: diagram axisStartPoint) strictlyPositive;
		assert: (diagramForm pixelValueAt: diagram axisStartPoint - (diagram defaultAxisLineWidth@0)) isZero;
		assert: (diagramForm pixelValueAt: diagram axisStartPoint + (0@diagram defaultAxisLineWidth)) isZero;
		assert: (diagramForm pixelValueAt: diagram axisEndPoint x@diagram axisStartPoint y) strictlyPositive;
		assert: (diagramForm pixelValueAt: diagram axisEndPoint - (10@0)) isZero