data management
indexCollectionFor: yValues
	| counter |
	counter := 0.
	^ yValues collect: [ :element |
		counter := counter + 1 ]