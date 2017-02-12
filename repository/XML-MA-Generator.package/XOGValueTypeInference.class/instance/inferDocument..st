inference
inferDocument: aDocument
	| types |
	types := OrderedCollection new.
	aDocument allElements do: [ :each | types addAll: (self inferElement: each) ].
	^ self groupTypes: types