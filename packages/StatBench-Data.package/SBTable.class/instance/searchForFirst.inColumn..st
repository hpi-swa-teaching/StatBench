table management
searchForFirst: aValue inColumn: aColumn
	^ (self rows at: aColumn) detect: [ :element | 
		element = aValue ]