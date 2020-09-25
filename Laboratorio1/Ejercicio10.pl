duplicarElemento([Cabeza|Cola],ListaDuplicada):-
    duplicarElemento(Cola,NuevaLista),
    =(ListaDuplicada,[Cabeza,Cabeza|NuevaLista]),!.

duplicarElemento([],[]).
