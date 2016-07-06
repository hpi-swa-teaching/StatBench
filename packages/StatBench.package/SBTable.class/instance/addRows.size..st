table management
addRows: rowNumber size: rowSize
	rowNumber timesRepeat: [ self addRowWithSize: rowSize ]