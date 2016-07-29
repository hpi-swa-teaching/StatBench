data management
indexCollectionFor: yValues
	| counter |
	counter := 0.
	^ yValues collect: [ :value |
		counter := counter + 1 ]