testing
isColumnNumeric: columnIndex
	^ self columnNumberState at: columnIndex ifAbsent: [ self error: 'columnNumberState not properly filled' ]