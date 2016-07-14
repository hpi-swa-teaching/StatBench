table management
columnWithoutNilValuesAt: columnIndex
	^ self rows collect: [ :currentRow |
		currentRow at: columnIndex ]
	thenSelect: [ :element |
		element notNil ]