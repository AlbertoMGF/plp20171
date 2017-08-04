
:- initialization main.

main :- read_line_to_codes(user_input, A2),
	string_to_atom(A2,A1),
	atom_number(A1,P1),
	
	
