testing
testXAxisAnnotation
	| values form strategy annotationOnXAxis sampleEnvironment position tempBoolean |
	self diagram: SBDiagram newBarDiagram.
	strategy := self diagram strategy.
	values := { 7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4 }.
	self diagram displayYValues: values.
	form := self diagram contentMorph imageForm.
	sampleEnvironment := self diagram extent y - strategy axisStartPoint y.
	annotationOnXAxis := (values collect: [ :value |
		tempBoolean := false.
		0 to: sampleEnvironment do: [ :epsilon | 
			position := strategy axisStartPoint + (strategy entryWidth * (values indexOf: value)@(epsilon + (strategy axisLineWidth / 2))).
			tempBoolean := tempBoolean or: [ (form pixelValueAt: position) strictlyPositive ]].
		tempBoolean ]) allSatisfy: [ :element |
			element ].
	self assert: annotationOnXAxis