accessing
addRowWithMaxLength
	| newRow |
	newRow := OrderedCollection new.
	self rowLength timesRepeat: [ newRow add: OrderedCollection new ].
	self rows add: newRow