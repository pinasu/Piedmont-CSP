/*
** Facts
*/
	color(blue).
	color(paleBlue).
	color(green).
	color(pink).
	color(yellow).
	color(orange).
	color(violet).
	color(red).

/*
** Rules
*/
	neighbour(ColorProvinceA, ColorProvinceB) :-
		color(ColorProvinceA), color(ColorProvinceB),
		ColorProvinceA \= ColorProvinceB.

/*
** Topology
*/
	piedmont(VB, VC, B, N, TO, AS, AL, CN) :-
		neighbour(VB, VC), neighbour(VB, N),
		neighbour(VC, VB), neighbour(VC, B), neighbour(VC, N), neighbour(VC, TO), neighbour(VC, AL),
		neighbour(B, VC), neighbour(B, TO),
		neighbour(N, VB), neighbour(N, VC),
		neighbour(TO, B), neighbour(TO, VC), neighbour(TO, AL), neighbour(TO, AS), neighbour(TO, CN),
		neighbour(AL, VC), neighbour(AL, TO), neighbour(AL, AS), neighbour(AL, CN),
		neighbour(AS, TO), neighbour(AS, AL), neighbour(AS, CN),
		neighbour(CN, TO), neighbour(CN, AS), neighbour(CN, AL).
