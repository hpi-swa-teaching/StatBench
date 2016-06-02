updating
updateContent
	| newline content |
	newline := Character cr.
	self header size strictlyPositive 
		ifTrue: [ content := self header, newline, self data ]
		ifFalse: [ content := self data].
	self
		contentsAsIs: content;
		rightFlush