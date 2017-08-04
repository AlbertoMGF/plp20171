conta_letra(Letra, Palavra, Result) :- conta_letra(Letra, Palavra, 1, 0, Result).

conta_letra(Letra, Palavra, Posicao, Quantidade, Result) :- 
	conta_letra(Letra, Palavra, NPosicao, NQuantidade, Result), 
	NPosicao is Posicao + 1, 
	NQuantidade is Quantidade + 1, 
	string_code(Posicao, Palavra, Letra), 
	Posicao =< Tamanho, atomics_to_string(Lista, Palavra), lenght(Lista, Tamanho).

conta_letra(Letra, Palavra, Posicao, Quantidade, Result) :- 
	conta_letra(Letra, Palavra, NPosicao, Quantidade, Result), 
	NPosicao is Posicao + 1, 
	Posicao =< Tamanho, atomics_to_string(Lista, Palavra), lenght(Lista, Tamanho).
	
conta_letra(Letra, Palavra, Posicao, Quantidade, Result) :- Result is Quantidade, Posicao > Tamanho, atomics_to_string(Lista, Palavra), lenght(Lista, Tamanho).


:- initialization main.

main :- 

	read_line_to_codes(user_input, Letra),
	read_line_to_codes(user_input, A1),
	string_codes(Palavra, A1),
	
	conta_letra(Letra, Palavra, Result),
	
	write(Result).
