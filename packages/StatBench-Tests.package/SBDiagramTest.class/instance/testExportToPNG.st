testing
testExportToPNG
	| values fileName |
	self diagram: SBDiagram newBarDiagram.
	values := { 7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4 }.
	fileName := 'pngexporttest'. 
	self diagram
		displayYValues: values;
		exportDiagramAsPNGNamed: fileName.
	self assert: (FileStream fileNamed: fileName, '.png') size strictlyPositive