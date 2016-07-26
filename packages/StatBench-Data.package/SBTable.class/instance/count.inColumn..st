column functions
count: aValue inColumn: aColumnIndex
	^ (self columnAt: aColumnIndex) count: [ :element |
		element = aValue ]