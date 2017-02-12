accessing
xmlType
	isXmlAttribute
		ifTrue: [ ^ #beXmlAttribute ].
	isXmlElement
		ifTrue: [ ^ #beXmlElement ].
	isXmlChildAttribute
		ifTrue: [ ^ #beXmlChildAttribute ].
	isXmlInlineElement
		ifTrue: [ ^ #beXmlElement ].
	^ #beXmlElement