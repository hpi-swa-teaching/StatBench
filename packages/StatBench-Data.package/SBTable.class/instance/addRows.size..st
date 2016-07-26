table management
addRows: aRowAmount size: aRowSize
	aRowAmount timesRepeat: [ self addRowWithSize: aRowSize ]