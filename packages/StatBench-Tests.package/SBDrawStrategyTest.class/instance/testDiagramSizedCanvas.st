testing
testDiagramSizedCanvas
	| aCanvas |
	self strategy diagramProperties at: #diagramSize put: (200@200).
	self strategy diagramProperties at: #diagramPosition put: (150@150).
	aCanvas := self strategy diagramSizedCanvas. 
	self 
		assert: aCanvas origin equals: (150@150);
		assert: aCanvas extent equals:  (200@200);
		assert: aCanvas clipRect equals: (Rectangle origin: (0@0) corner: (50@50))