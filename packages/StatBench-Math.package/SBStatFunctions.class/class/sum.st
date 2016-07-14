mathematical functions
sum
	^ [ :collection |
		collection inject: 0 into: [ :subTotal :next |
			next + subTotal ]]