
dividir_listas(Lista,Posicion,Lista1,Lista2):-
    divisionIzq(Lista,Posicion,0,Lista1),
    divisionDer(Lista,Posicion,0,Lista2).

divisionIzq([Cabeza|Cola],Posicion,Contador,Lista1):-
    <(Contador,Posicion),
    is(Cont, +(Contador,1)),
    division(Cola,Posicion,Cont,NuevaLista),
    =(Lista1,[Cabeza|NuevaLista]),!.

divisionIzq([_|_], _, _,Lista1):-
    =(Lista1,[]).

divisionDer([Cabeza|Cola],Posicion,Contador,Lista2):-
    >=(Contador,Posicion),
    is(Cont, +(Contador,1)),
    divisionDer(Cola,Posicion,Cont,NuevaLista),
    =(Lista2,[Cabeza|NuevaLista]),!.

divisionDer([_|Cola], Posicion, Contador,Lista2):-
    is(Cont, +(Contador,1)),
    divisionDer(Cola,Posicion,Cont,NuevaLista),
    =(Lista2,NuevaLista).
divisionDer([],_,_,[]).