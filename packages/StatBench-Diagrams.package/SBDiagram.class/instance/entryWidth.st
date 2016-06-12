accessing
entryWidth
	| max |
	^ entryWidth ifNil: [
		self chooseNumericalLimits
			ifTrue: [
				"max := self domain detectMax: [ :element | element ].
				(max * 10) > 10000
					ifTrue: [ entryWidth := 10000 / max]
					ifFalse: [" entryWidth := self defaultNumericalEntryWidth "]"]
			ifFalse: [ entryWidth := self defaultEntryWidth ]]