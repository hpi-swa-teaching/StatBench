diagram properties
extraCanvasSpace
	^ self diagramProperties at: #extraCanvasSpace ifAbsent: [ 0 asPoint ]