diagram properties
calculateLegendSize
	| legendSize maxStringWidth legendValues |
	legendSize := self diagramType = #scatter
		ifTrue: [
			legendValues := self colorValues asSet.
			maxStringWidth := SBStatFunctions max value: (legendValues collect: [ :element |
				self defaultFont widthOfString: element asString ]).
			(maxStringWidth + self defaultAnnotationPadding)@(legendValues size * (self defaultFont height + self defaultAnnotationPadding)) ]
		ifFalse: [ 0 asPoint ].
	self extraCanvasSpace: (self extraCanvasSpace x + legendSize x)@(self extraCanvasSpace y max: legendSize y).