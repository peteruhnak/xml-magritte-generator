xml processing
addClassForElement: anElement type: aType
	| cls |
	cls := self ensureCreateClass: (self classNameFor: anElement name).
	cls
		compileMeta:
			'xmlElementName
	^ ''' , anElement name , ''''
		classified: 'accessing'.
	aType withIndexDo: [ :each :i | self addPairedAttribute: each to: cls order: i ]