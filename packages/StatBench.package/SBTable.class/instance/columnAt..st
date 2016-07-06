table management
columnAt: columnIndex
	^ self rows collect: [ :currentRow |
		currentRow at: columnIndex ]