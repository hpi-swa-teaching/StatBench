accessing
statNames
	| statNames |
	statNames := OrderedCollection new.
	statNames add: 'min'.
	statNames add: 'max'.
	statNames add: 'mean'.
	statNames add: 'median'.
	statNames add: 'standardDeviation'.
	statNames add: 'variance'.
	^ statNames