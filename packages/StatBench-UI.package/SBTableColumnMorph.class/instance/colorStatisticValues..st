display
colorStatisticValues: aDictionary
	| textMorph statValue |
	self colorsForStatisicValues keysAndValuesDo: [ :key :value |
		statValue := (aDictionary at: key) at: self column.
		textMorph := self submorphs detect: [ :currentTextMorph |
			currentTextMorph contents = statValue asString ] ifNone: [ nil ].
		textMorph ifNotNil: [ textMorph backgroundColor: value ]]