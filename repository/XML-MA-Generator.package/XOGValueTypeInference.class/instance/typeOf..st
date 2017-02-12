as yet unclassified
typeOf: anObject
	(#('true' 'false') includes: anObject)
		ifTrue: [ ^ #Boolean ].
	(NumberParser isNumber: anObject)
		ifTrue: [ | num |
			num := NumberParser parse: anObject.
			num isInteger
				ifTrue: [ ^ #Integer ].
			num isFloat
				ifTrue: [ ^ #Float ].
			^ #Number ].
	^ #String