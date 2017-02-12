as yet unclassified
mergeTypes: aCollection
	(aCollection includes: #String)
		ifTrue: [ ^ #String ].
	(aCollection includes: #Float)
		ifTrue: [ ^ #Float ].
	(aCollection allSatisfy: [ :each | each = aCollection first ])
		ifFalse: [ self error: 'Unforeseen error (obviously)' ].
	^ aCollection anyOne