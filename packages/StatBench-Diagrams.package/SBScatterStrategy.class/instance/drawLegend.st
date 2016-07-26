drawing
drawLegend
	| position |
	position := self axisEndPoint + (self annotationPadding@0).
	self colorDictionary keysAndValuesDo: [ :value :color |
		position := position + (0@self font height).
		self diagramProperties at: #fontColor put: color.
		self
			drawString: value asString
			in: ((self diagram position + position) extent: (self font widthOfString: value asString)@self font height) ].
	self diagramProperties at: #fontColor put: Color black