display
exportDiagramAsPNG
	self exportDiagramAsPNGNamed: self diagramType asString, 'diagram_' , DateAndTime now asString, '.png'