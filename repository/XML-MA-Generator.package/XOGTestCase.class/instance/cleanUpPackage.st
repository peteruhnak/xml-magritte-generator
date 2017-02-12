as yet unclassified
cleanUpPackage
	(RPackage organizer includesPackageNamed: self packageName)
		ifTrue: [ (RPackage organizer packageNamed: self packageName) classes
				do: [ :each | each removeFromSystemUnlogged ] ]