accessing
row: aRowIndex column: aColumnIndex
	^ (self isOutOfBoundsRow: aRowIndex column: aColumnIndex)
		ifFalse: [ (self rowAt: aRowIndex) at: aColumnIndex ]