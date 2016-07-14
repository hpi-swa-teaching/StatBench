mathematical functions
standardDeviation
	^ [ :collection |
		(self variance value: collection) sqrt ]