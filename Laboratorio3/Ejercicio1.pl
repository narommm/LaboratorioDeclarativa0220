% Ángel, Boris, César y Diego salieron a tomarse un trago y se
% sentaron en la barra de un restaurante.
% Angel se sentó un puesto a la derecha del que bebió tequila.
% Los que bebieron vino y cerveza no se sentaron a la par.
% El que bebió champaña estaba en uno de los extremos de la barra.
% Diego y quien bebió vino se sentaron en asientos contiguos.
% César se sentó inmediatamente a la derecha de Angel.
% Boris no bebió cerveza.
% Indique las ubicaciones en que se sentaron los cuatro amigos y
% las bebidas que tomó cada uno.

%      Bebida1   Bebida2   Bebida3   Bebida4
%      --------------------------------------
%      --------------------------------------
	puesto([PosTequila, _, tequila], Barra),
	%=:=(PosAng, +(PosTeq, 1)),
	succ(PosTequila, PosAngel),

	puesto([PosVino, _, vino], Barra),
	puesto([PosCerveza, _, cerveza], Barra),
	%(   >(PosVino, +(PosCerveza, 1)); <(PosVino, -(PosCerveza, 1))),
	(not(succ(PosCerveza, PosVino)) , not(succ(PosVino, PosCerveza))),

	(puesto([1, _, champaña], Barra); puesto([4, _, champaña], Barra)),

	puesto([PosDiego, diego, _], Barra),
	%(   =:=(PosDiego, +(PosVino, 1)); =:=(PosDiego, -(PosVino, 1))),
	(succ(PosVino, PosDiego) ; succ(PosDiego, PosVino)),

	puesto([PosCesar, cesar, _], Barra),
	%=:=(PosCesar, +(PosAngel, 1)),
	succ(PosAngel, PosCesar),

	puesto([PosBoris, boris, _], Barra),
	=\=(PosBoris, PosCesar).

puesto([1, A, B], [[1, A, B], [_, _, _],[_, _, _],[_, _, _]]).
puesto([2, A, B], [[_, _, _], [2, A, B],[_, _, _],[_, _, _]]).
puesto([3, A, B], [[_, _, _], [_, _, _],[3, A, B],[_, _, _]]).
puesto([4, A, B], [[_, _, _], [_, _, _],[_, _, _],[4, A, B]]).






"PRUEBA COMMIT -AM"

