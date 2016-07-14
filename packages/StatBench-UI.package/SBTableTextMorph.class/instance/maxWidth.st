accessing
maxWidth
	^ maxWidth ifNil: [ maxWidth := self defaultWidth ]