retornarSub(Dato,[SI,Dato,SD],[SI,Dato,SD]):-!.

retornarSub(Dato, [SI, DatoN,_],Subarbol):-
    <(Dato,DatoN),
    retornarSub(Dato,SI,Subarbol),!.

retornarSub(Dato, [_,DatoN,SD],Subarbol):-
    >(Dato,DatoN),
    retornarSub(Dato,SD,Subarbol),!.