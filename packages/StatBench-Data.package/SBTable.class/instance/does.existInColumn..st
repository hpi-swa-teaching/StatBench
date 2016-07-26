column functions
does: aValue existInColumn: aColumnIndex
	^ (self columnAt: aColumnIndex) anySatisfy: [ :element |
		element = aValue ]