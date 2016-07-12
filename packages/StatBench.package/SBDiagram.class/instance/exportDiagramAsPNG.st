display
exportDiagramAsPNG
	PNGReadWriter
		putForm: self imageForm 
		onFileNamed: ( ( ( self diagramType ) asString ) , 'diagram_' , ((DateAndTime now) asString ) , '.png' )