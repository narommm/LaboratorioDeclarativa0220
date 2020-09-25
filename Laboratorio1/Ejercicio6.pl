clausula(Lista,NuevaLista):-
    =(Lista,[Cabeza|_]),
    buscarPequenio(Lista,Cabeza,R1),
    promedioLista(Lista,0,0,R2),
    buscarMayor(Lista,Cabeza,R3),
    repeticionesPromedio(Lista,0,R2,R4),
    %Se liga las respuestas obtenidas por cada clausula con NuevaLista
    =(NuevaLista,[R1,R2,R3,R4]).

buscarPequenio([Cabeza|Cola],Menor,R1):-
    =<(Cabeza,Menor),
    is(ElementoMenor,Cabeza),
    buscarPequenio(Cola,ElementoMenor,R1),!.

buscarPequenio([_|Cola],Menor,R1):-
    buscarPequenio(Cola,Menor,R1),!.

%Le asigna el valor obtenido en ElementoMenor a R1
buscarPequenio([],Menor,Menor).

promedioLista([Cabeza|Cola],SumaElementos,ContadorElementos,R2):-
    is(Sum, +(SumaElementos,Cabeza)),
    is(Cont, +(ContadorElementos,1)),
    calcular(Cola,Sum,Cont,R2),!.

promedioLista([],SumaElementos,ContadorElementos,R2):-
    is(R2, /(SumaElementos,ContadorElementos)).

buscarMayor([Cabeza|Cola],Mayor,R3):-
    >=(Cabeza,Mayor),
    is(ElementoMayor,Cabeza),
    buscarPequenio(Cola,ElementoMayor,R3),!.

buscarMayor([_|Cola],Mayor,R3):-
    buscarMayor(Cola,Mayor,R3),!.

%Le asigna el valor obtenido en ElementoMayor a R3
buscarMayor([],ElementoM,ElementoM).

repeticionesPromedio([Cabeza|Cola],Repeticiones,Promedio,R4):-
    ==(Cabeza,Promedio),
    is(Cont, +(Repeticiones,1)),
    repeticionesPromedio(Cola,Cont,Promedio,R4),!.

repeticionesPromedio([_|Cola],Repeticiones,Promedio,R4):-
    repeticionesPromedio(Cola,Repeticiones,Promedio,R4).

% Se asigna el valor del contador de Repeticiones a R4
repeticionesPromedio([],Repeticiones,_,Repeticiones).
