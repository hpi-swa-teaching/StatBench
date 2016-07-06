testing
testYAxisAnnotation
	| values diagram diagramForm annotationOnYAxis sampleEnvironment position |
	diagram := SBDiagram new.
	values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.
	diagram
		diagramType: #bar;
		displayXValues: (SBTable indexCollectionFor: values) yValues: values.
	diagramForm := diagram contentMorph imageForm.
	sampleEnvironment := diagram axisStartPoint x - (diagram defaultAxisLineWidth / 2) - 1.
	annotationOnYAxis := false.
	1 to: diagram annotationInterval y do: [ :index |
		0 to: sampleEnvironment do: [ :epsilon | 
			position := epsilon@(diagram axisStartPoint y - diagram defaultFont height - (diagram drawArea y / diagram annotationInterval y * index)).
			annotationOnYAxis := annotationOnYAxis or: [ (diagramForm pixelValueAt: position) strictlyPositive ]]].
	self assert: annotationOnYAxis