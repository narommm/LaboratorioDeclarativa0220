listaIntervalo(NumeroSuperior, NumeroSuperior, [NumeroSuperior]):-!.

listaIntervalo(NumeroInferior,NumeroSuperior, Lista):-
    =\=(NumeroInferior,NumeroSuperior),
    is(NumeroSiguiente, +(NumeroInferior, 1)),
    listaIntervalo(NumeroSiguiente,NumeroSuperior,NuevaLista),
    =(Lista, [NumeroInferior|NuevaLista]),!.
