testing
isInlined: anElement
	anElement isRoot
		ifTrue: [ ^ false ].
	anElement attributes size > 1
		ifTrue: [ ^ false ].
	anElement hasAttributes not & anElement hasElements not
		ifFalse: [ ^ true ].
	anElement attributes size = 1 & anElement hasElements not
		ifTrue: [ ^ true ].
	anElement hasAttributes not & anElement hasElements not & anElement hasStringNodes
		ifTrue: [ ^ true ].
	^ false