data management
generateColorForString: aString
	| seed color maxColor |
	maxColor := 16777215.
	seed := aString inject: 0 into: [ :total :next |
		total + next asInteger ].
	color := (seed sin cos * maxColor) abs asInteger \\ maxColor.
	color := color printStringBase: 16.
	color size < 6
		ifTrue: [
			(6 - color size) timesRepeat: [
				color := '0', color ]].
	^ Color
		r: (Number readFrom: (color copyFrom: 1 to: 2) base: 16) / 255
		g: (Number readFrom: (color copyFrom: 3 to: 4) base: 16) / 255
		b:  (Number readFrom: (color copyFrom: 5 to: 6) base: 16) / 255