diagram properties
generateColorForString: aString
	| sum rgb |
	sum := aString inject: 0 into: [ :total :next |
		total + next asInteger ].
	rgb := (sum \\ 33 * 8)@((sum + 8 \\ 33 * 8)@(32 - (sum \\ 33) * 8)).
	rgb := rgb / 256.
	^ Color r: rgb x g: rgb y x b: rgb y y