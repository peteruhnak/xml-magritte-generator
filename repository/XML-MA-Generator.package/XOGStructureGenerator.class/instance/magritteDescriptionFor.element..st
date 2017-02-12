generation
magritteDescriptionFor: aName element: anElement
	| desc |
	desc := XOGMagritteDescription new.
	desc
		type: MAStringDescription;
		accessor: aName;
		label: aName.
	^ desc