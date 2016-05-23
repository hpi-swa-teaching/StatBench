table management
does: aValue existInColumn: aColumn
	^ self rows detect: [ :currentRow |
		  (currentRow at: aColumn) = aValue ]
	ifFound: [ :currentRow | true ]
	ifNone: [ false ]