xml processing
addClassForElement: anElement type: aType
	| cls |
	cls := self ensureCreateClass: (self classNameFor: anElement name).
	cls
		compileMeta:
			'xmlElementName
	^ ''' , anElement name , ''''
		classified: 'accessing'.
	aType
		withIndexDo: [ :each :i | 
			| pair |
			pair := each.
			valueTypeOverrides
				at: (self xPathFor: anElement) , '/' , pair key
				ifPresent: [ :t | pair := pair key -> (pair value , {t}) ].
			valueTypeOverrides
				at: (self xPathFor: anElement) , '[@' , pair key , ']'
				ifPresent: [ :t | pair := pair key -> (pair value , {t}) ].
			self addPairedAttribute: pair to: cls order: i ]