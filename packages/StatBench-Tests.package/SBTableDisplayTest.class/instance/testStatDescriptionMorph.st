testing
testStatDescriptionMorph
	| description |
	description := 'min' , Character cr , 'max' , Character cr , 'mean' , Character cr , 'papeMedian' , Character cr , 'standardDeviation' , Character cr , 'variance' , Character cr , 'detectFactors'.
	self tableDisplay addStatDescriptionMorph.
	self assert: tableDisplay submorphs first text string equals: description