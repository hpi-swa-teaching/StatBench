testing
testAxis
| values diagram diagramMorph |
diagram := SBDiagram new.

values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.
"test axis for bar diagram"
diagram diagramType: #bar.
diagram displayXValues: (SBTable indexCollectionFor: values) yValues: values.
diagramMorph := diagram contentMorph imageForm.

"test axisStartPoint"
self 
	assert: ((diagramMorph colorAt: (diagram axisStartPoint)) = Color transparent) not;
	assert: ((diagramMorph colorAt: ((diagram axisStartPoint) - (diagram defaultAxisLineWidth@0))) = Color transparent);
	assert: ((diagramMorph colorAt: ((diagram axisStartPoint) + (0@diagram defaultAxisLineWidth))) = Color transparent).
"test axisEndPoint"
self assert: ((diagramMorph colorAt: (diagram axisEndPoint x@diagram axisStartPoint y) ) = Color transparent) not.
self assert: ((diagramMorph colorAt: ((diagram axisEndPoint) - (10@0))) = Color transparent).

"
diagram diagramType: #line.
diagram displayXValues: (SBTable indexCollectionFor: values) yValues: values.
diagramMorph := diagram contentMorph imageForm.

test axisStartPoint
self 
	assert: ((diagramMorph colorAt: (diagram axisStartPoint)) = Color transparent) not;
	assert: ((diagramMorph colorAt: ((diagram axisStartPoint) - (diagram defaultAxisLineWidth@0))) = Color transparent);
	assert: ((diagramMorph colorAt: ((diagram axisStartPoint) + (0@diagram defaultAxisLineWidth*2))) = Color transparent).
	
test axisEndPoint
self assert: ((diagramMorph colorAt: (diagram axisEndPoint x@diagram axisStartPoint y) ) = Color transparent) not.
self assert: ((diagramMorph colorAt: ((diagram axisEndPoint) - (10@0))) = Color transparent).
"