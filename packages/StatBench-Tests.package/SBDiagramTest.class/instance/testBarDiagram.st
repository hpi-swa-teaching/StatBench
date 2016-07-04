testing
testBarDiagram
	| values diagram diagramForm position |
	diagram := SBDiagram new.
	values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.
	diagram diagramType: #bar.
	diagram displayXValues: (SBTable indexCollectionFor: values) yValues: values.
	diagramForm := diagram contentMorph imageForm.
	1 to: values size do: [ :index |
		position := diagram axisStartPoint + ((diagram entryWidth * index)@(-1 * diagram yScaling * (values at: index))).
		self
			assert: (diagramForm pixelValueAt: position) strictlyPositive;
			assert: (diagramForm pixelValueAt: position - (0@diagram yScaling)) isZero ]