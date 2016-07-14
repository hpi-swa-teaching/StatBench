drawing
drawString: aString on: aCanvas at: aPoint extent: extent
	| charNumber newString newExtent |
	newString := aString.
	newExtent := extent.
	extent x > (self entryWidth - self defaultAnnotationPadding)
		ifTrue: [
			charNumber := ((self entryWidth - self defaultAnnotationPadding) / (self defaultFont widthOf: $a)) floor.
			newString := aString copyFrom: charNumber + 1 to: aString size.
			self
				drawString: newString
				on: aCanvas
				at: aPoint + (0@self defaultFont height)
				extent: (self defaultFont widthOfString: newString)@extent y.
			newString := aString copyFrom: 1 to: charNumber.
			newExtent := (self defaultFont widthOfString: newString)@extent y ].
	aCanvas 
		drawString: newString
		in: (aPoint extent: newExtent)
		font: self defaultFont 
		color: self defaultFontColor