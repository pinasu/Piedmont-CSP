/*
** Facts
*/
	colore(blu).
	colore(celeste).
	colore(verde).
	colore(rosa).
	colore(giallo).
	colore(arancione).
	colore(viola).
	colore(rosso).

/*
** Rules
*/
	vicino(ColoreProvinciaA, ColoreProvinciaB) :- 
		colore(ColoreProvinciaA), colore(ColoreProvinciaB), 
		ColoreProvinciaA \= ColoreProvinciaB.

/*
** Topology
*/
	piemonte(VB, VC, B, N, TO, AS, AL, CN) :-
		vicino(VB, VC), vicino(VB, N),
		vicino(VC, VB), vicino(VC, B), vicino(VC, N), vicino(VC, TO), vicino(VC, AL),
		vicino(B, VC), vicino(B, TO),
		vicino(N, VB), vicino(N, VC),
		vicino(TO, B), vicino(TO, VC), vicino(TO, AL), vicino(TO, AS), vicino(TO, CN),
		vicino(AL, VC), vicino(AL, TO), vicino(AL, AS), vicino(AL, CN),
		vicino(AS, TO), vicino(AS, AL), vicino(AS, CN),
		vicino(CN, TO), vicino(CN, AS), vicino(CN, AL).


