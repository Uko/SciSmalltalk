*Math-DHB-NumericalExtensions
atRow: rowIndex put: aCollection

	aCollection withIndexDo: [: value : columnIndex |
		self rowAt: rowIndex columnAt: columnIndex put: value ]
	
