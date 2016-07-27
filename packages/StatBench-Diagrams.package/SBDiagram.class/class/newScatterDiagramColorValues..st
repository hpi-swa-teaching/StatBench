instance creation
newScatterDiagramColorValues: colorCollection
	| instance |
	instance := self basicNew.
	^ instance
		initialize;
		strategy: (SBScatterStrategy newWith: colorCollection);
		yourself