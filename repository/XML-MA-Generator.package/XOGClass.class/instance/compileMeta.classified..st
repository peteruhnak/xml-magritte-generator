adding
compileMeta: aString classified: aProtocol
	| ast |
	ast := RBParser parseMethod: aString.
	metaMethods at: ast selector put: aProtocol -> aString