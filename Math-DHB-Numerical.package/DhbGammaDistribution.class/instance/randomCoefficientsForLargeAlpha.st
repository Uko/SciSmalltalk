information
randomCoefficientsForLargeAlpha
		"Private -
		 (c) Copyrights Didier BESSET, 1999, all rights reserved.
		 Initial code: 4/3/99 "
	randomCoefficients isNil
		ifTrue: [ randomCoefficients := self initializeRandomCoefficientsForLargeAlpha].
	^randomCoefficients