data management
calculateLegendSize
	| legendSize maxStringWidth legendValues newCanvasSize |
	legendValues := self colorValues asSet.
	maxStringWidth := SBStatFunctions max value: (legendValues collect: [ :element |
		self font widthOfString: element asString ]).
	legendSize := (maxStringWidth + self annotationPadding)@(legendValues size * (self font height + self annotationPadding)).
	newCanvasSize := (self extraCanvasSpace x + legendSize x)@(self extraCanvasSpace y max: legendSize y).
	self diagramProperties at: #extraCanvasSpace put: newCanvasSize