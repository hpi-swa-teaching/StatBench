mathematical functions
variance
	| mean |
	^ [ :collection |
		mean := self mean value: collection.
		collection size strictlyPositive
			ifTrue: [
				(collection inject: 0 into: [ :totalSum :next |
					(next - mean) squared + totalSum]) / collection size ]]