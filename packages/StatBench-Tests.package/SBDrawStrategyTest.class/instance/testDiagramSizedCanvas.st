testing
testDiagramSizedCanvas
	| aCanvas |
	self strategy: SBDrawStrategy new.
	self strategy diagramProperties
		at: #diagramSize put: 200 asPoint;
		at: #diagramPosition put: 150 asPoint.
	aCanvas := self strategy diagramSizedCanvas. 
	self 
		assert: aCanvas origin equals: 150 asPoint;
		assert: aCanvas extent equals: 200 asPoint;
		assert: aCanvas clipRect equals: (Rectangle origin: 0 asPoint corner: 50 asPoint)