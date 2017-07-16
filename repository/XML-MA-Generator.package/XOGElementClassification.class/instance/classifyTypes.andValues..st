retrieving
classifyTypes: aTypesDictionary andValues: aValueTypesDictionary
	| types valueTypes |
	types := self convertToPaths: aTypesDictionary.
	valueTypes := self convertToPaths: aValueTypesDictionary.
	^ self
		convertFromPaths:
			(types keys
				collect: [ :path | path -> (self classifyElement: path withTypes: types andValues: valueTypes) ])
				asOrderedDictionary