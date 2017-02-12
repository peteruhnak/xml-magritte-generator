utility
xPathFor: anElement
	| parts element |
	parts := OrderedCollection new.
	element := anElement.
	[ element isDocument ]
		whileFalse: [ parts addFirst: element name.
			element := element parent ].
	parts addFirst: ''.
	^ parts joinUsing: '/'