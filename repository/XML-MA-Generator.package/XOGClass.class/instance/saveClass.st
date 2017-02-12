generating
saveClass
	self assert: [ name isString & name isNotEmpty ].
	self assert: [ parent isClass ].
	self assert: [ instanceVariables isCollection ].
	self assert: [ instanceVariables allSatisfy: #isString ].
	self assert: [ package isString & package isNotEmpty ].
	^ parent
		subclass: name
		instanceVariableNames: (self instanceVariables joinUsing: ' ')
		classVariableNames: ''
		package: package