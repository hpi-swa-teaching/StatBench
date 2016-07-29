testing
testUpdateContent
	self diagram: SBDiagram new.
	self assert: self diagram contentMorph isNil.
	self diagram updateContent: (Form extent: 10 asPoint).
	self assert: self diagram contentMorph notNil