mathematical functions
mathematicalMedian
	^ [ :collection |
		collection size \\ 2 = 0
			ifTrue:  [ (collection at: (collection size / 2)) + (collection at: (collection size / 2 + 1)) / 2 ]
			ifFalse: [ collection median ]]