:- initialization(main).

verificasituacao(AlturaFinal, AlturaInicial, AlturaAtual, Resultado) :- Resultado is "ADEQUADO", AlturaAtual <= (AlturaFinal + 100), AlturaAtual > AlturaInicial.
verificasituacao(AlturaFinal, AlturaInicial, AlturaAtual, Resultado) :- Resultado is "PERIGO", AlturaAtual > (AlturaFinal + 100).
verificasituacao(AlturaFinal, AlturaInicial, AlturaAtual, Resultado) :- Resultado is "PERIGO", AlturaAtual < AlturaInicial.
verificasituacao(AlturaFinal, AlturaInicial, AlturaAtual, Resultado) :- Resultado is "OK", AlturaAtual =:= AlturaFinal.


main :-
    read_line_to_codes(user_input, A2),
    string_to_atom(A2,A1),
    atom_number(A1,AlturaFinal),
    
    read_line_to_codes(user_input, A2),
    string_to_atom(A2,A1),
    atom_number(A1,AlturaInicial).
