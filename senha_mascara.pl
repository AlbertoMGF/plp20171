
:- initialization main.

main :- read_line_to_codes(user_input, A2),
	string_to_atom(A2,A1),
	atom_number(A1,P1),
	
	read_line_to_codes(user_input, A3),
	string_to_atom(A3,A4),
	atom_number(A4,P2),
	
	read_line_to_codes(user_input, A5),
	string_to_atom(A5,A6),
	atom_number(A6,P3),
	
	read_line_to_codes(user_input, A20),
	string_to_atom(A20,A21),
	atom_number(A21,P4),
	
	read_line_to_codes(user_input, A7),
	string_codes(A30, A7),
	sub_string(A30, P1, 1, _, R1),
	
	read_line_to_codes(user_input, A8),
	string_codes(A31, A8),
	sub_string(A31, P2, 1, _, R2),
	
	read_line_to_codes(user_input, A9),
	string_codes(A32, A9),
	sub_string(A32, P3, 1, _, R3),
	
	read_line_to_codes(user_input, A10),
	string_codes(A33, A10),
	sub_string(A33, P4, 1, _, R4),
	
	string_concat(R1, R2, Z),
	string_concat(Z, R3, ZZ),
	string_concat(ZZ, R4, Result),
	
    write(Result).
    
