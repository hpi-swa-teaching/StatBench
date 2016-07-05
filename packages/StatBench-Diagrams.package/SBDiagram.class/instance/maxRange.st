accessing
maxRange
	^ maxRange ifNil: [ maxRange := self maxRangeForCollection: self function values ]