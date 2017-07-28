:- initialization main.



rendimentoAlcoolGasolina(0.7, X) :- X is 0.7.
custototal(Preco, Litros, Resultado) :- Resultado is Preco * Litros.
melhorpreco(PrecoA, PrecoB, Litros, Result) :- Result is Resultado, Resultado is custototal(PrecoA, Litros, Resultado), PrecoA <= (PrecoB * X), X is rendimentoAlcoolGasolina(X).
melhorpreco(PrecoA, PrecoB, Litros, Result) :- Result is Resultado, Resultado is custototal(PrecoB, Litros, Resultado), PrecoA > (PrecoB * X), X is rendimentoAlcoolGasolina(X).




main :-
    read_line_to_codes(user_input, A2),
    string_to_atom(A2,A1),
    atom_number(A1,PrecoAlcool),
    
    read_line_to_codes(user_input, A2),
    string_to_atom(A2,A1),
    atom_number(A1,PrecoGasolina),
    
    read_line_to_codes(user_input, A2),
    string_to_atom(A2,A1),
    atom_number(A1,PrecoLitros),
    
    melhorpreco(PrecoAlcool, PrecoGasolina, Litros, R),
    write(R).
    
