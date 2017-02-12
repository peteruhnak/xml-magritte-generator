xml processing
processElement: anElement
	| type |
	type := typeHierarchy at: (self xPathFor: anElement).
	type ifNil: [ ^ self ].
	self addClassForElement: anElement type: type