eliminar(1,[_|Cola],Cola).
eliminar(Posicion,[Cabeza1|Cola1],[Cabeza1|Cola2]):-
    is(NuevaPosicion, -(Posicion,1)),
    eliminar(NuevaPosicion,Cola1,Cola2).
