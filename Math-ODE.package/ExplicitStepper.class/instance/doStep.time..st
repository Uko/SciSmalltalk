stepping
doStep: aState time: t
	"This method should take one step from inState at time t of size dt, and modify the state, then answer it. The default implementation here is Euler Method. Subclasses should override"
	| dxdt |
	self stepSize isNil ifTrue: [self error: 'step size required by stepper'].
	dxdt  := system x: aState t: t.
	aState isNumber 
		ifTrue: [^ (self stepSize * dxdt + aState)]
	"a collection"	
		ifFalse:
			[(1 to: aState size) 
			do: [:i | | xi | 
					xi := aState at: i.
					aState at: i put: (dxdt at: i) * self stepSize + xi].
				^ aState.]