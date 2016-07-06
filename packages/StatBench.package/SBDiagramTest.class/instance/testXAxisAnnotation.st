testing
testXAxisAnnotation
	| values diagram diagramForm annotationOnXAxis sampleEnvironment position tempBoolean |
	diagram := SBDiagram new.
	values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.
	diagram
		diagramType: #bar;
		displayXValues: (SBTable indexCollectionFor: values) yValues: values.
	diagramForm := diagram contentMorph imageForm.
	sampleEnvironment := diagram extent y - diagram axisStartPoint y.
	annotationOnXAxis := (values collect: [ :value |
		tempBoolean := false.
		0 to: sampleEnvironment do: [ :epsilon | 
			position := diagram axisStartPoint + (diagram entryWidth * (values indexOf: value)@(epsilon + (diagram defaultAxisLineWidth / 2))).
			tempBoolean := tempBoolean or: [ (diagramForm pixelValueAt: position) strictlyPositive ]].
		tempBoolean ]) allSatisfy: [ :element |
			element ].
	self assert: annotationOnXAxis