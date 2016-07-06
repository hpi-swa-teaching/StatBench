data management
indexCollectionFor: yValues
	| xValues |
	xValues := OrderedCollection new.
	1 to: yValues size do: [ :index |
		xValues add: index ].
	^ xValues