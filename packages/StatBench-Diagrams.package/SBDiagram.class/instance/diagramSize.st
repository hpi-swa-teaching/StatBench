accessing
diagramSize
	^ diagramSize ifNil: [ diagramSize := self defaultDiagramSize ]