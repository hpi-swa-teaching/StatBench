accessing
maxRange
	| functionValues |
	functionValues := self function collect: [ :tuple |
			tuple second ].
	^ maxRange ifNil: [ maxRange := self maxRangeForCollection: functionValues]