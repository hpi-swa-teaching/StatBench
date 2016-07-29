testing
testCanvasSize
	self strategy: SBDrawStrategy new.
	self strategy diagramProperties
		at: #diagramSize put: 200 asPoint;
		at: #extraCanvasSpace put: 25@50.
	self assert: self strategy canvasSize equals: 225@200
	