initialization
initialize
	super initialize.
	self diagramProperties
		at: #drawWidth put: 4;
		at: #colorDictionary put: Dictionary new;
		at: #colorValues put: OrderedCollection new