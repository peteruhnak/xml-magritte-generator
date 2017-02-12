generation
ensureCreateAttribute: aName in: aClass
	aClass addInstVarNamed: aName.
	self addMethodsForAttribute: aName in: aClass