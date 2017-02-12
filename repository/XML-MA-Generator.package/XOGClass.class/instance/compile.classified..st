adding
compile: aString classified: aProtocol
	| ast |
	ast := RBParser parseMethod: aString.
	methods at: ast selector put: aProtocol -> aString