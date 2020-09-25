consecutivos([_|Cola],NuevaLista):-
    verificar(Cola, '',NuevaLista).

verificar([Cabeza|Cola],Anterior,NuevaLista):-
    \==(Cabeza,Anterior),
    verificar(Cola,Cabeza,Lista),
    =(NuevaLista, [Cabeza|Lista]),!.

verificar([Cabeza|Cola],_,NuevaLista):-
    verificar(Cola,Cabeza,Lista),
    =(NuevaLista, Lista),!.

verificar([],_,[]).
