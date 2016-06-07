accessing
rowLength
	^ (self rowAt: 1 ifAbsent: [ OrderedCollection new ]) size