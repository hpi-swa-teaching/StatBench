accessing
diagramSize
	^ diagramSize ifNil: [ diagramSize := 0@self defaultDiagramHeight ]