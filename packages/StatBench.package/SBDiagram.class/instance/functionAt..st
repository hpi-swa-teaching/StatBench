accessing
functionAt: key
	| values |
	values := OrderedCollection new.
	self function do: [ :tuple |
		 (tuple first = key) ifTrue: [
			values add: tuple second ]].
	^ values