running
testAddPolynomial	
	|  poly |
	poly :=	DhbPolynomial coefficients: #(1 1 1).
	self should: [(poly + q12 at: 0 ) = (2 + 2  i) asQuaternion ].
	self should: [(q12 + poly at: 0) = (2  + 2  i) asQuaternion ].
	