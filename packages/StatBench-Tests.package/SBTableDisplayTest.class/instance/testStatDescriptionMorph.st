testing
testStatDescriptionMorph
	self tableDisplay addStatDescriptionMorph.
	self 
		description: 'min' , Character cr , 'max' , Character cr , 'mean' , Character cr , 'papeMedian' , Character cr , 'standardDeviation' , Character cr , 'variance' , Character cr , 'detectFactors';
		assert: ((tableDisplay submorphs at: 1) text string) =  self description 