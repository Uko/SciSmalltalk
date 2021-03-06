tests-stepping
testDoStepTime
	"this is identical to testDoStepTimeStepSize except dt is stored."
	| stepper sys dt |
	sys := ExplicitSystem block: [:x :t | x * t].
	stepper := ExplicitStepper onSystem: sys.
	dt := 0.1.
	stepper stepSize: dt.
	self should: [stepper stepSize = dt].
	self should: [(stepper doStep: 0 time: 10) = 0 ].
	self should: [(stepper doStep: 10 time: 0 stepSize: 1) = 10 ].

	"stepSize parameter changes the stored stepSize"
	self should: [(stepper stepSize = 1)].

	self should: [(stepper doStep: 1 time:  1) = 2].
	self should: [(stepper doStep: 10 time:  1 stepSize: 0.2) = 12.0].