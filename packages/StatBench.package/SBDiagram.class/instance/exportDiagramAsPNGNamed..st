display
exportDiagramAsPNGNamed: aString
	PNGReadWriter
		putForm: self imageForm 
		onFileNamed: ( aString , '.png' )