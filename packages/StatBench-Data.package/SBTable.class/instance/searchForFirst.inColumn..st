table management
searchForFirst: aValue inColumn: aColumn
	^ self rows detect: [ :currentRow |
		(currentRow at: aColumn) = aValue ] 
		ifFound: [ :currentRow | currentRow ]
		ifNone: [ nil ]