printing
printStatsToString
	| newline counter statsCollection |
	statsCollection := OrderedCollection new.
	newline := Character cr.
	(self rowLength) +1 timesRepeat: [
		statsCollection add: String new ].
	self statNames do: [ :currentStat |
		counter := 1.
		statsCollection at: counter put: ((statsCollection at: counter ifAbsent: [ String new ]),  currentStat, ': ').
	1 to: (self rowLength) do: [ :currentColumn |
			statsCollection at: counter put: ((statsCollection at: counter ifAbsent: [ String new ]),  (self getStat: currentStat forColumn: currentColumn) , newline).
			counter := counter + 1 ]].
	statsCollection do: [ :currentString |
		currentString size strictlyPositive
			ifTrue: [ statsCollection at: (statsCollection indexOf: currentString) put: currentString allButLast ]].
	^ statsCollection