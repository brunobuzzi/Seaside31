accessing
items
	^ items ifNil: [ items := self defaultModel ]