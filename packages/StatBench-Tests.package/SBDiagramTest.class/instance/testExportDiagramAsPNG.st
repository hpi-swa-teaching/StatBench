testing
testExportDiagramAsPNG
	| values directory files |
	self diagram: SBDiagram newBarDiagram.
	values := { 7 . 1 . 2 . 4.3 . 9.2 . 0 . 11 . 10.587 . 12 . 4 }.
	self diagram
		displayYValues: values;
		exportDiagramAsPNG.
	directory := FileDirectory uri: '.'.
	files := directory fileNames collect: [ :element |
		element asString ]
	thenSelect: [ :element |
		element size > 4 ].
	files := files select: [ :element |
		(element last: 3) = 'png' and: [ (element = 'pngexporttest.png') not ]]
	thenCollect: [ :element |
		directory entryAt: element ].
	files select: [ :file |
		(DateAndTime now - file creationDateAndTime) < (Duration minutes: 1) ]
	thenDo: [ :file |
		self assert: file size strictlyPositive.
		file delete ]
	