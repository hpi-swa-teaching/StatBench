table management
addRowIfAbsent: aRowIndex
	self columnLength < aRowIndex
		ifTrue: [ (aRowIndex - self columnLength) timesRepeat: [
			self addEmptyRow ]]