contarNodos([],0):-!.
contarNodos([SI,_,SD],N):-
    contarNodos(SI,NI),
    contarNodos(SD,ND),
    is(N, +(1,(+(NI,ND)))),!.