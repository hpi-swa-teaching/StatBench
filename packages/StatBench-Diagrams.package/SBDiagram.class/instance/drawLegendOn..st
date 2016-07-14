drawing
drawLegendOn: aCanvas
	| position |
	position := self axisEndPoint + (self defaultAnnotationPadding@0).
	self colorDictionary keysAndValuesDo: [ :value :color |
		position := position + (0@self defaultFont height).
		aCanvas
			drawString: value asString
			in: ((self position + position) extent: (self defaultFont widthOfString: value asString)@self defaultFont height)
			font: self defaultFont 
			color: color ]