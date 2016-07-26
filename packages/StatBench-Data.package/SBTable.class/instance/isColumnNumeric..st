testing
isColumnNumeric: aColumnIndex
	^ self columnNumberState at: aColumnIndex ifAbsent: [ self error: 'columnNumberState not properly filled' ]