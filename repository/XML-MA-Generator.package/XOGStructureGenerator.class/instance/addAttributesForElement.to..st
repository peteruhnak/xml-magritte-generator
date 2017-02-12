xml processing
addAttributesForElement: anElement to: aClass
	| names validNames |
	names := anElement attributeNodes collect: [ :each | self attributeNameFor: each name ].
	validNames := names select: [ :each | RBScanner isSelector: each ].
	validNames do: [ :each | self ensureCreateAttributeFor: anElement named: each in: aClass ]