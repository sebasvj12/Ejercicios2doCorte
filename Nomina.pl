extra(hc,0).
extra(honorarios,0).
extra(mto,0.2).
extra(tco,0.3).

semestre(18).

ganancia(titular,hc,500).
ganancia(asistente,hc,400).
ganancia(auxiliar,hc,300).
ganancia(titular,mto,400).
ganancia(asistente,mto,300).
ganancia(auxiliar,mto,200).
ganancia(titular,tco,300).
ganancia(asistente,tco,200).
ganancia(auxiliar,tco,130).
ganancia(titular,honorarios,200).
ganancia(asistente,honorarios,150).
ganancia(auxiliar,honorarios,100).

contrato(alejandro,titular,hc,8).
contrato(carlos,asistente,mto,4).
contrato(maria,auxiliar,honorairos,2).
contrato(fernanda,titular,tco,8).
contrato(juan,asistente,tco,6).

%Q es tipo contrato.
%H horas trabajadas.
%E puesto.
%S tiempo semestre.
%R nombre profesor.
%L pago calculado.

pagocontrato(Q,E,R,L) :- extra(Q,A),ganancia(E,Q,B),contrato(R,E,Q,H),semestre(S),P is H*B,J is P*S,N is J*A,L is J+N.


