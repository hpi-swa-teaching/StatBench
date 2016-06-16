accessing
maxRange
	^ maxRange
		ifNil: [
			maxRange := self function values detectMax: [ :element |
				element ].
			maxRange class = SBNumber
				ifTrue: [ maxRange := maxRange value ].
			maxRange strictlyPositive
				ifFalse: [ self error: 'Negative max value: ', maxRange asString ].
			maxRange := (maxRange / (10 raisedToInteger: maxRange log floor)) ceiling * (10 raisedToInteger: maxRange log floor) ]