generation
ensureCreateClass: aName
	^ classes
		at: aName
		ifAbsentPut: [ XOGClass name: aName parent: self rootClassName package: packageName ]