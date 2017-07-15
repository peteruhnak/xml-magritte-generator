generation
ensureCreateClass: aName
	^ classes
		at: aName
		ifAbsentPut: [ CBClass name: aName parent: self rootClassName package: packageName ]