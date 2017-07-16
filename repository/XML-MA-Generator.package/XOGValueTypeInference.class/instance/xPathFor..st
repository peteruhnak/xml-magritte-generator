utility
xPathFor: aNode
	| element parts suffix |
	parts := OrderedCollection new.
	element := aNode.
	suffix := ''.
	aNode isAttribute
		ifTrue: [ suffix := '[@' , element name , ']' ].
	[ element isDocument ]
		whileFalse: [ parts addFirst: element name.
			element := element parent ].
	parts addFirst: ''.
	^ (parts joinUsing: '/') , suffix