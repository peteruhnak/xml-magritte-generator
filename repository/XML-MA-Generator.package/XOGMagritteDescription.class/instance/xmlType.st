accessing
xmlType
	isXmlAttribute
		ifTrue: [ ^ #beXmlAttribute ].
	isXmlElement
		ifTrue: [ ^ #beXmlElement ].
	isXmlChildAttribute
		ifTrue: [ ^ #beXmlChildAttribute ].
	type = MAToOneRelationDescription
		ifTrue: [ ^ #beXmlInlineElement ].
	^ #beXmlElement