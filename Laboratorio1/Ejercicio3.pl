intercambiarLista([Cabeza1|Cola1],[Cabeza2|Cola2],Respuesta):-
    intercambiarLista(Cola1,Cola2,NuevaRespuesta),
    =(Respuesta, [Cabeza1,Cabeza2 | NuevaRespuesta]),!.

intercambiarLista(_,_,[]).
