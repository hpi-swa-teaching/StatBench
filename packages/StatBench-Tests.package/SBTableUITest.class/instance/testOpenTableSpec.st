testing
testOpenTableSpec
	| openTable tabelUIMorph textSelector string |
	tabelUIMorph :=  SBTableUI open.
	string := 'testString'.
	textSelector := #filePath.
	World removeMorph: tabelUIMorph.
	self tableUI: tabelUIMorph model.
	openTable := (tabelUIMorph paneMorphs select: [ :paneMorph | 
		paneMorph class = PluggableButtonMorphPlus ]) first.
	self
		assert: openTable actionSelector equals: #buttonAction;
		assert: self tableUI buttonLabel equals: openTable label