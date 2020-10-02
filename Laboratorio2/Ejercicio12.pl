tunco(Lista):-
    =(Lista,[_,_,_,_,_]),

    =(Lista,[[1, chico]|_]),
    last(Lista,[5,chepe]),

    ordenSalida(NJose,jose, Lista),
    ordenSalida(NPaco,paco,Lista),
    succ(NJose,NPaco),
    ordenSalida(NPancho,pancho,Lista),
    >(NPaco,NPancho),!.


%ordenSalida(1,[[1,chico],...])
ordenSalida(2,Amigo,[_,[2,Amigo],_,_,_]).
ordenSalida(3,Amigo,[_,_,[3,Amigo],_,_]).
ordenSalida(4,Amigo,[_,_,_,[4,Amigo],_]).
%ordenSalida(5,Chepe,[.....,[5,Chepe]]
