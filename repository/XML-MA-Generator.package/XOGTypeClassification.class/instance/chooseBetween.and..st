classification
chooseBetween: aType and: anotherType
	| both |
	both := Set with: aType with: anotherType.
	"complex + anything"
	both detect: #isComplex ifFound: [ :complex | ^ complex ].
	"list + inlined"
	both detect: #isList ifFound: [ :list | ^ list ].
	^ self class inlined