accessing
drawWidth
	^ drawWidth ifNil: [ drawWidth := self defaultDrawWidthForType: self diagramType ]