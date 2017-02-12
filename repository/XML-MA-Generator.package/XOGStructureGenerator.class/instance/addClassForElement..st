xml processing
addClassForElement: anElement
	| cls |
	cls := self ensureCreateClass: (self classNameFor: anElement name).
	cls compileMeta: 'xmlElementName
	^ ''', anElement name, '''' classified: 'accessing'.
	self addAttributesForElement: anElement to: cls