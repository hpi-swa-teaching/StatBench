diagram properties
functionAt: key
	^ self function select: [ :tuple |
		tuple first = key ]
	thenCollect: [ :tuple |
		tuple second ]