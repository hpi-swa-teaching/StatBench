accessing
entryWidth
	^ entryWidth ifNil: [ entryWidth := self defaultEntryWidth ]