data management
calculateLegendSize
	| legendSize maxStringWidth legendValues |
	legendValues := self colorValues asSet.
	maxStringWidth := SBStatFunctions max value: (legendValues collect: [ :element |
		self font widthOfString: element asString ]).
	legendSize := (maxStringWidth + self annotationPadding)@(legendValues size * (self font height + self annotationPadding)).
	self diagramProperties at: #extraCanvasSpace put: (self extraCanvasSpace x + legendSize x)@(self extraCanvasSpace y max: legendSize y).