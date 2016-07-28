diagram properties
functionAt: key
	^ self function at: key ifAbsent: [ self error: 'Element ', key asString, ' not in function.' ]