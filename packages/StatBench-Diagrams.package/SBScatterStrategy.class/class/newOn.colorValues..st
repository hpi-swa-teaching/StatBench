instance creation
newOn: aDiagram colorValues: colorCollection
	^ self basicNew
		initialize;
		diagram: aDiagram;
		colorValues: colorCollection;
		yourself