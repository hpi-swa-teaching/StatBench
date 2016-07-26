accessing
columnWithoutNilValuesAt: aColumnIndex
	^ (self columnAt: aColumnIndex) select: [ :element |
		element notNil ]