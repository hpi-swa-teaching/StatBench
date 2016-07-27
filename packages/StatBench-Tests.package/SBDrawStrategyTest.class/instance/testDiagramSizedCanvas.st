testing
testDiagramSizedCanvas
	| aCanvas |
	self strategy diagramProperties at: #diagramSize put: (200@200).
	self strategy diagramProperties at: #diagramPosition put: (150@150).
	aCanvas := self strategy diagramSizedCanvas. 
	self 
		assert: aCanvas origin = (150@150);
		assert: aCanvas extent =  (200@200);
		assert: aCanvas clipRect = (Rectangle origin: (0@0) corner: (50@50))