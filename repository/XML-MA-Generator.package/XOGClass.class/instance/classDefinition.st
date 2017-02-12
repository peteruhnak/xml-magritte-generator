generating
classDefinition
	self assert: [ name isString & name isNotEmpty ].
	self assert: [ parent isString & parent isNotEmpty ].
	self assert: [ instanceVariables isCollection ].
	self assert: [ instanceVariables allSatisfy: #isString ].
	self assert: [ package isString & package isNotEmpty ].
	^ '<1s> subclass: #<2s><n><t>instanceVariableNames: <3p><n><t>classVariableNames: ''''<n><t>poolDictionaries: ''''<n><t>category: <4p>'
		expandMacrosWith: parent
		with: name
		with: (self instanceVariables joinUsing: ' ')
		with: package