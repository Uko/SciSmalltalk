iterative algorithms
testNewtonZeroFinder
	"Code Example 5.3"
	| zeroFinder result |
	zeroFinder := DhbNewtonZeroFinder function: [ :x | x errorFunction - 0.9].
	zeroFinder initialValue: 1.0.
	result := zeroFinder evaluate.
	self should: [ zeroFinder hasConverged].
	self should: [ (result -1.28155193867885) abs < zeroFinder precision]