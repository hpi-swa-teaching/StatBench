testing
testYAxisAnnotation
	| values form strategy annotationOnYAxis sampleEnvironment position |
	self diagram: SBDiagram newBarDiagram.
	strategy := self diagram strategy.
	values := { 7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4 }.
	self diagram displayYValues: values.
	form := self diagram contentMorph imageForm.
	sampleEnvironment := strategy axisStartPoint x - (strategy axisLineWidth / 2) - 1.
	annotationOnYAxis := false.
	1 to: strategy annotationInterval y do: [ :index |
		0 to: sampleEnvironment do: [ :epsilon | 
			position := epsilon@(strategy axisStartPoint y - strategy font height - (strategy drawArea y / strategy annotationInterval y * index)).
			annotationOnYAxis := annotationOnYAxis or: [ (form pixelValueAt: position) strictlyPositive ]]].
	self assert: annotationOnYAxis