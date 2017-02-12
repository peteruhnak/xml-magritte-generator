xml processing
addClassForElement: anElement type: aType
	| cls |
	cls := self ensureCreateClass: (self classNameFor: anElement name).
	cls
		compileMeta:
			'xmlElementName
	^ ''' , anElement name , ''''
		classified: 'accessing'.
	aType do: [ :each | self addPairedAttribute: each to: cls ]