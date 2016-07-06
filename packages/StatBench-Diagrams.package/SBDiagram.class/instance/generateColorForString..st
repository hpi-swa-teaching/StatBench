diagram properties
generateColorForString: aString
	"| sum rgb |
	sum := aString inject: 0 into: [ :total :next |
		total + next asInteger ].
	rgb := (sum \\ 33 * 8)@((sum + 8 \\ 33 * 8)@(32 - (sum \\ 33) * 8)).
	rgb := rgb / 256.
	^ Color r: rgb x g: rgb y x b: rgb y y"
	| seed color |
	seed := aString inject: 0 into: [ :total :next |
		total + next asInteger ].
	color := (seed sin cos * 16777215) abs asInteger \\ 16777215.
	color := color printStringBase: 16.
	color size < 6
		ifTrue: [
			(6 - color size) timesRepeat: [
				color := '0', color ]].
	^ Color
		r: (Compiler evaluate: '16r', (color copyFrom: 1 to: 2)) / 255
		g: (Compiler evaluate: '16r', (color copyFrom: 3 to: 4)) / 255
		b: (Compiler evaluate: '16r', (color copyFrom: 5 to: 6)) / 255