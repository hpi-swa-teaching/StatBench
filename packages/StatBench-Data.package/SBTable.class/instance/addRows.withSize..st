table management
addRows: rowNumber withSize: rowSize
	rowNumber timesRepeat: [ self addRowWithSize: rowSize ]