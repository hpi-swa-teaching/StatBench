testing
testHeaderSpec
	| header tabelUIMorph |
	tabelUIMorph :=  SBTableUI open.
	World removeMorph: tabelUIMorph.
	self tableUI: tabelUIMorph model.
	header := (tabelUIMorph paneMorphs select: [ :paneMorph | 
		paneMorph class = PluggableCheckBoxMorph ]) first.
	self
		assert: self tableUI checkBoxLabel equals: header label;
		assert: header actionSelector equals: #checkBoxAction;
		assert: header valueSelector equals: #checkBoxState