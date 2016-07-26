instance creation
newLineDiagram
	| instance |
	instance := self basicNew.
	^ instance
		initialize;
		strategy: (SBLineStrategy newOn: instance);
		yourself