testing
testStatDescriptionMorph
	| description |
	description := 'min', Character cr, 'max', Character cr, 'mean', Character cr, 'inSetMedian', Character cr, 'median', Character cr, 'standardDeviation', Character cr, 'variance', Character cr, 'detectFactors'.
	self tableDisplay addStatDescriptionMorph.
	self assert: self tableDisplay submorphs first text string equals: description