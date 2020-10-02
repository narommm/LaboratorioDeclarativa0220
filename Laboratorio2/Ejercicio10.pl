barrio(Edificio):-
    Edificio=[_,_,_,_,_],

    asignarPiso([chilo, Chilo],Edificio),
    =\=(Chilo,5),

    asignarPiso([canuta,Canuta],Edificio),
    =\=(Canuta,1),

    asignarPiso([marina,Marina],Edificio),
    asignarPiso([mario,Mario],Edificio),
    =\=(Mario,5),
    =\=(Mario,1),
    (
     %Evaluar piso superior
     <(Mario,-(Canuta,1));
     %Evaluar piso inferior
     >(Mario,+(Canuta,1))
     ),
    (
     <(Mario,-(Marina,1));
     >(Mario,+(Marina,1))
    ),

    asignarPiso([lencha,Lencha],Edificio),
    >(Lencha,Canuta),!.

asignarPiso([X,Y],[[X,Y],_,_,_,_]):- is(Y,1).
asignarPiso([X,Y],[_,[X,Y],_,_,_]):- is(Y,2).
asignarPiso([X,Y],[_,_,[X,Y],_,_]):- is(Y,3).
asignarPiso([X,Y],[_,_,_,[X,Y],_]):- is(Y,4).
asignarPiso([X,Y],[_,_,_,_,[X,Y]]):- is(Y,5).
