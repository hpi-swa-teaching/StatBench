instance creation
newScatterDiagramColorValues: colorCollection
	| instance |
	instance := self basicNew.
	^ instance
		initialize;
		strategy: (SBScatterStrategy newOn: instance colorValues: colorCollection);
		yourself