
invertirArbol([],[]):-!.

invertirArbol([SI,DatoN,SD],[SD2,DatoN,SI2]):-
    invertirArbol(SI,SI2),
    invertirArbol(SD,SD2),!.