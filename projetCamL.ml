let nomFic = "C:/Users/Mofid Krim/Documents/Licence Informatique/L3/Caml/Projet Caml/dictionnaire_min.txt";;

let process_file process filename =
    let ch = open_in filename in
    try 
		while true 
			do process(input_line ch) 
			done
    with End_of_file -> close_in ch;;
(* process_file : (string -> 'a) -> string -> unit = <fun> *)

process_file print_endline nomFic;;