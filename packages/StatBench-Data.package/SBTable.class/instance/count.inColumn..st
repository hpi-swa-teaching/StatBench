table management
count: aValue inColumn: aColumn
	^ self rows count: [ :currentRow |
		(currentRow at: aColumn) = aValue ]