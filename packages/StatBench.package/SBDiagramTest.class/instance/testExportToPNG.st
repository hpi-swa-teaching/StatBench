testing
testExportToPNG
	| values fileName |
	self diagram: SBDiagram new.
	values := {7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4}.
	fileName := 'pngexporttest'.
	self diagram
		diagramType: #bar;
		displayXValues: (SBTable indexCollectionFor: values) yValues: values;
		exportDiagramAsPNGNamed: fileName.
	self assert: (FileStream fileNamed: fileName, '.png') size strictlyPositive