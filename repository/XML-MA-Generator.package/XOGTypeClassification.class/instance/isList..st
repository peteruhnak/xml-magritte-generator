testing
isList: anElement
	| childName |
	anElement isRoot
		ifTrue: [ ^ false ].
	anElement attributes ifNotEmpty: [ ^ false ].
	anElement hasElements
		ifFalse: [ ^ false ].
	childName := anElement elements anyOne name.
	^ anElement elements allSatisfy: [ :each | each name = childName ]