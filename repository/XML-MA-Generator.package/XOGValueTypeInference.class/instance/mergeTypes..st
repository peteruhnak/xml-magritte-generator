as yet unclassified
mergeTypes: aCollection
	| types |
	types := aCollection removeDuplicates.
	types removeAllSuchThat: [ :each | each = #Empty ].
	types ifEmpty: [ ^ #Empty ].
	types size > 1
		ifTrue: [ self error: 'Unforeseen error (obviously)' ].
	^ types first