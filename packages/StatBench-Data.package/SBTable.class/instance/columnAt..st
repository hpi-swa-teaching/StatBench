accessing
columnAt: aColumnIndex
	^ self rows collect: [ :currentRow |
		currentRow at: aColumnIndex ]