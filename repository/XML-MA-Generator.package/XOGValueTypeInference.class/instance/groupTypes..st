as yet unclassified
groupTypes: aCollection
	| groups merged |
	groups := aCollection groupedBy: #key.
	merged := Dictionary new.
	(aCollection groupedBy: #key)
		keysAndValuesDo: [ :key :pairs | merged at: key put: (self mergeTypes: (pairs collect: #value)) ].
	^ merged