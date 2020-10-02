insertar_en(Lista,Elemento,Posicion,Resultado):-
    verificar(Lista,Elemento,Posicion,1,Resultado).

verificar([Cabeza|Cola], Elemento, Posicion,Contador, Resultado):-
    =\=(Posicion,Contador),
    is(Cont, +(Contador,1)),
    verificar(Cola,Elemento,Posicion,Cont,Lista),
    =(Resultado,[Cabeza|Lista]),!.

verificar([Cabeza|Cola],Elemento,Posicion,Contador,Resultado):-
    is(Cont,+(Contador,1)),
    verificar(Cola,Elemento,Posicion,Cont,Lista),
    =(Resultado, [Elemento, Cabeza|Lista]),!.

verificar([],_,_,_,[]).