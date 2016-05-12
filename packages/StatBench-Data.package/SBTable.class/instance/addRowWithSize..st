table management
addRowWithSize: rowSize
	| newRow |
	newRow := OrderedCollection new.
	rowSize timesRepeat: [ newRow add: nil ].
	rows add: newRow