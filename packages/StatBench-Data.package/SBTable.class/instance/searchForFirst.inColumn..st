column functions
searchForFirst: aValue inColumn: aColumnIndex
	^ self rows detect: [ :currentRow |
		(currentRow at: aColumnIndex) = aValue ] 
		ifFound: [ :currentRow |
			currentRow ]
		ifNone: [ nil ]