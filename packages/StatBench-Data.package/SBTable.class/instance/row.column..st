accessing
row: aRowIndex column: aColumnIndex
	^ (self isOutOfBoundsRow: aRowIndex column: aColumnIndex)
		ifTrue: [ self error: 'Index out of bounds: ', aRowIndex, '@', aColumnIndex ]
		ifFalse: [ (self rowAt: aRowIndex) at: aColumnIndex ]