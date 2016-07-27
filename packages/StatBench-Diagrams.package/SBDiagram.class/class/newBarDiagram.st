instance creation
newBarDiagram
	^ self basicNew
		initialize;
		strategy: SBBarStrategy new;
		yourself