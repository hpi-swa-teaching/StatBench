accessing
tableDisplay
	^ tableDisplay ifNil: [ tableDisplay := SBTableDisplay new ]