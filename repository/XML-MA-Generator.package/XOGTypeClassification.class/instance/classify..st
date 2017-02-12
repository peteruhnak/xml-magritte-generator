classification
classify: anElement
	(self isRoot: anElement)
		ifTrue: [ ^ self class complex ].
	(self isList: anElement)
		ifTrue: [ ^ self class list childName: anElement elements anyOne name ].
	((self isInlined: anElement) and: [ self isList: anElement parent ])
		ifTrue: [ ^ self class complex ].
	(self isInlined: anElement)
		ifTrue: [ ^ self class inlined ].
	^ self class complex