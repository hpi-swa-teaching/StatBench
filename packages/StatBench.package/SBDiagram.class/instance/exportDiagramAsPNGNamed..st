display
exportDiagramAsPNGNamed: fileName
	PNGReadWriter
		putForm: self contentMorph imageForm 
		onStream: (StandardFileStream forceNewFileNamed: fileName, '.png')