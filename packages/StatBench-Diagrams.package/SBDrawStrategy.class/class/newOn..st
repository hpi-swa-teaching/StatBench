instance creation
newOn: aDiagram
	^ self basicNew
		initialize;
		diagram: aDiagram;
		yourself