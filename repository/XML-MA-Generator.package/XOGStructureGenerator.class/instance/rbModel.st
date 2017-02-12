generation
rbModel
	| model |
	model := RBNamespace new.
	classes
		do: [ :each | 
			| cls meta |
			model defineClass: each classDefinition.
			cls := model classNamed: each name asSymbol.
			each methods do: [ :pair | cls compile: pair value classified: pair key ].
			meta := cls theMetaClass.
			each metaMethods do: [ :pair | meta compile: pair value classified: pair key ] ].
	^ model