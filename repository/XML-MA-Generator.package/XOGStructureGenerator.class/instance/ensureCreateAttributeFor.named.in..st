generation
ensureCreateAttributeFor: anElement named: aName in: aClass
	aClass addInstVarNamed: aName.
	self addMethodsForAttributeNamed: aName in: aClass from: anElement