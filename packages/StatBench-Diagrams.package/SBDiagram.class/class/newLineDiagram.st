instance creation
newLineDiagram
	^ self basicNew
		initialize;
		strategy: SBLineStrategy new;
		yourself