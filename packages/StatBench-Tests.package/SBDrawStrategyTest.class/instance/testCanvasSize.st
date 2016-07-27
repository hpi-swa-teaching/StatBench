testing
testCanvasSize
	self strategy diagramProperties at: #diagramSize put: (200@200).
	self strategy diagramProperties at: #extraCanvasSpace put: (25@50).
	self assert: self strategy canvasSize equals: (225@200)
	