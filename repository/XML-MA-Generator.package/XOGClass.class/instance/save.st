generating
save
	| cls |
	cls := self saveClass.
	methods do: [ :pair | self addMethod: pair value classified: pair key to: cls ].
	^ cls