descuento(hc,0).
descuento(honorarios,0).
descuento(mto,0.2).
descuento(tco,0.3).

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

pago(Q,E,R) :-descuento(Q,A),ganancia(E,Q,B),C is B*A,R is B-C.





