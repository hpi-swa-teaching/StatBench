mathematical functions
mean
	^ [ :collection |
		collection size strictlyPositive
			ifTrue: [
				(collection inject: 0 into: [ :subTotal :next |
					next + subTotal ]) / collection size ]]