instance creation
newBarDiagram
	| instance |
	instance := self basicNew.
	^ instance
		initialize;
		strategy: (SBBarStrategy newOn: instance);
		yourself