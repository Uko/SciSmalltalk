function evaluation
testPolynomialIntegralWithConstant
	"Code example 2.3"
	| polynomial |
	polynomial := ( DhbPolynomial coefficients: #(-3 7 2 1)) integral: 5.
	self should: [ (polynomial at: 0) = 5].
	self should: [ (polynomial at: 1) = -3].
	self should: [ (polynomial at: 2) = (7/2)].
	self should: [ (polynomial at: 3) = (2/3)].
	self should: [ (polynomial at: 4) = (1/4)].
	self should: [ (polynomial at: 5) = 0].