drawing
drawString: aString at: aPoint extent: extent
	| charNumber newString newExtent font |
	newString := aString.
	newExtent := extent.
	font := self font.
	extent x > (self entryWidth - self annotationPadding)
		ifTrue: [
			charNumber := ((self entryWidth - self annotationPadding) / (font widthOf: $a)) floor.
			newString := aString copyFrom: charNumber + 1 to: aString size.
			self
				drawString: newString
				on: self canvas
				at: aPoint + (0@font height)
				extent: (font widthOfString: newString)@extent y.
			newString := aString copyFrom: 1 to: charNumber.
			newExtent := (font widthOfString: newString)@extent y ].
	self  
		drawString: newString
		in: (aPoint extent: newExtent)