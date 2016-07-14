table management
does: aValue existInColumn: aColumn
	^ (self columnAt: aColumn) anySatisfy: [ :element |
		element = aValue ]