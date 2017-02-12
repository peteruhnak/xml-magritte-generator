inference
inferElement: anElement
	^ (anElement hasElements not & anElement hasStringNodes
		ifTrue: [ {(self xPathFor: anElement) -> (self typeOf: anElement rawContentString)} ]
		ifFalse: [ {(self xPathFor: anElement) -> #Empty} ])
		,
			(anElement attributeNodes
				collect: [ :each | (self xPathFor: each) -> (self typeOf: each value) ])