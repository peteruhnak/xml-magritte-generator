retrieving
attributesOf: anElementPath in: aMapping
	^ aMapping associations
		select: [ :pair | 
			| path |
			path := pair key.
			(path beginsWith: anElementPath)
				and: [ path size = (anElementPath size + 1) and: [ path last includes: $@ ] ] ]