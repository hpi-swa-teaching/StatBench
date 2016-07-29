testing
testRedrawContent
	self diagram: SBDiagram new.
	self diagram
		reDraw: false;
		redrawContent.
	self assert: self diagram reDraw