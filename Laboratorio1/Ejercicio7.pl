eliminarLista(Lista, Posicion,NuevaLista):-
    eliminar(Lista, Posicion, 0, NuevaLista).

eliminar([Cabeza|Cola], Posicion, Contador, NuevaLista):-
    =\=(Contador,Posicion),
    is(NuevoContador, +(Contador,1)),
    eliminar(Cola, Posicion, NuevoContador, ListaAux),
    =(NuevaLista, [Cabeza|ListaAux]),!.

eliminar([Cabeza|Cola], Posicion, Contador, NuevaLista):-
    is(NuevoContador, +(Contador,1)),
    eliminar(Cola,Posicion,NuevoContador, NuevaLista),!.

eliminar(_,_,_,[]).
