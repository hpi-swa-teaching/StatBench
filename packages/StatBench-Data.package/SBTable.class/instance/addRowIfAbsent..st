table management
addRowIfAbsent: rowIndex
	self columnLength < rowIndex
		ifTrue: [ (rowIndex - self columnLength) timesRepeat: [
			self addEmptyRow ]]