accessing
realClass
	^ (Smalltalk hasClassNamed: self name)
		ifTrue: [ self name asClass ]
		ifFalse: [ nil ]