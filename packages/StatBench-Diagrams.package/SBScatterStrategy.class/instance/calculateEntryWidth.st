data management
calculateEntryWidth
	self diagramProperties at: #entryWidth put: (self calculateMaxXWidthFor: (self maxRangeForCollection: self domain))