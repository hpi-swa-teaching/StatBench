testing
testPngExport
	| values diagram diagramForm  |
	diagram := SBDiagram new.
	values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.
	diagram diagramType: #bar.
	diagram displayXValues: (SBTable indexCollectionFor: values) yValues: values.
	diagramForm := diagram contentMorph imageForm.
	diagram exportDiagramAsPNGNamed: 'test' .

	self assert: (( FileStream fileNamed: 'test.png' ) size > 0 )