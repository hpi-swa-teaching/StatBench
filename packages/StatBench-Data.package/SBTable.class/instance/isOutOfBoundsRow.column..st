testing
isOutOfBoundsRow: aRowIndex column: aColumnIndex
	^ ((aRowIndex between: 1 and: self columnLength)
		and: [ aColumnIndex between: 1 and: (self rowAt: aRowIndex) size ]) not