testing
testLineDiagram
| values diagram diagramMorph position |
diagram := SBDiagram new.

values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.

diagram diagramType: #line.
diagram displayXValues: (SBTable indexCollectionFor: values) yValues: values.
diagramMorph := diagram contentMorph imageForm.

1 to: values size do: [ :index |
	position := diagram axisStartPoint + ((diagram entryWidth * index) @ (diagram yScaling * ((values at: index) * -1))).
	self assert: ((diagramMorph colorAt: position + (0@0)) = Color transparent) not.
	self assert: ((diagramMorph colorAt: (position - (0 @ diagram yScaling))) = Color transparent) ]