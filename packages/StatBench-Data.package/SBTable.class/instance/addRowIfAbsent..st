table management
addRowIfAbsent: rowIndex
	self rows size < rowIndex
		ifTrue: [ (rowIndex - self rows size) timesRepeat: [
			self rows add: OrderedCollection new ]]