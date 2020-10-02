colorCabello(Lista):-
    Lista=[[sraBlanco,B],[sraRubio,R],[sraCastanio,C]],
    traerColor(B),
    \==(B,blanco),
    \==(B,castanio),


    traerColor(R),
    \==(R,B),
    \==(R,rubio),


    traerColor(C),
    \==(C,castanio),
    \==(C,R),
    \==(C,B).


traerColor(blanco).
traerColor(rubio).
traerColor(castanio).
