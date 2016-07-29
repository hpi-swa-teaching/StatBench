math
positionFor: aPoint
	^ self strategy axisStartPoint + ((self strategy entryWidth * aPoint x)@(-1 * self strategy yScaling * aPoint y - self strategy drawWidth))