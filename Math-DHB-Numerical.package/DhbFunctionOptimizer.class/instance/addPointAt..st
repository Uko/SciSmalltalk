transformation
addPointAt: aNumber 
	"(c) Copyrights Didier BESSET, 2000, all rights reserved.
		 Initial code: 2/22/00 "

	bestPoints 
		add: (optimizingPointClass vector: aNumber function: functionBlock)