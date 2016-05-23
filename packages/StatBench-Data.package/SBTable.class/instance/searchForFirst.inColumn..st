table management
searchForFirst: aValue inColumn: aColumn
	self rows detect: [ :currentRow |
		(currentRow at: aColumn) = aValue ] 
		ifFound: [ :currentRow |
		^ self rows indexOf: currentRow]
		ifNone: [ 
		^ nil ]