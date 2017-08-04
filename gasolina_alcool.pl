rendimentoAlcoolGasolina(X) :- X is 0.7.
custototal(Preco, Litros, Resultado) :- Resultado is Preco * Litros.
melhorpreco(PrecoA, PrecoB, Litros, Result) :- 
	Result is Resultado, custototal(PrecoA, Litros, Resultado), 
	PrecoA =< (PrecoB * X), X is rendimentoAlcoolGasolina(X).

melhorpreco(PrecoA, PrecoB, Litros, Result) :- 
	Result is Resultado, custototal(PrecoB, Litros, Resultado), 
	PrecoA > (PrecoB * X), X is rendimentoAlcoolGasolina(X).

:- initialization(main).

main :- 
    read_line_to_codes(user_input, A2),
    string_to_atom(A2,A1),
    atom_number(A1,PrecoAlcool),
    
    read_line_to_codes(user_input, A3),
    string_to_atom(A3,A4),
    atom_number(A4,PrecoGasolina),
    
    read_line_to_codes(user_input, A5),
    string_to_atom(A5,A6),
    atom_number(A6,Litros),
    
    melhorpreco(PrecoAlcool, PrecoGasolina, Litros, R),
    write(R),
    halt(0).
    
