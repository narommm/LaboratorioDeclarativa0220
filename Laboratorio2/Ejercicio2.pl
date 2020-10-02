
arbolEquilibrado(Arbol):-
    difAlturas(Arbol,_).

difAlturas([],0):-!.

difAlturas([SI,_,SD],H):-
    difAlturas(SI,HI),
    difAlturas(SD,HD),
    is(H, +(1,max(HI,HD))),
    =<(abs(-(HI,HD)),1).