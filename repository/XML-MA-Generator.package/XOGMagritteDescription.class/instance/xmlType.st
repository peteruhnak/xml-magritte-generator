accessing
xmlType
	isXmlAttribute
		ifTrue: [ ^ #beXmlAttribute ].
	isXmlElement
		ifTrue: [ ^ #beXmlElement ].
	isXmlChildAttribute
		ifTrue: [ ^ #beXmlChildAttribute ].
	isXmlInlineElement & (type = MAToOneRelationDescription)
		ifTrue: [ ^ #beXmlInlineElement ].
	^ #beXmlElement