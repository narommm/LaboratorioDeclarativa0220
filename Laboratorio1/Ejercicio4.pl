promedioLista(Lista,Promedio):-
    calcular(Lista,0,0,Promedio).

calcular([Cabeza|Cola],SumaElementos,ContadorElementos,Promedio):-
    number(Cabeza),
    is(Sum, +(SumaElementos,Cabeza)),
    is(Cont, +(ContadorElementos,1)),
    calcular(Cola,Sum,Cont,Promedio),!.

calcular([],Sum,Cont,Promedio):-
    is(Promedio, /(Sum,Cont)).

calcular(_,_,_,0).
