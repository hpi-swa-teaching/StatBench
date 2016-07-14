table management
count: aValue inColumn: aColumn
	^ (self columnAt: aColumn) count: [ :element |
		element = aValue ]