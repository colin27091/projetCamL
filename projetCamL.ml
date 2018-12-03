
(* ouvrir : in_channel = <abstr> *)

(* let ouvrir = open_in ;; *)

(* let ligne = input_line ouvrir;; *)
(* (* ligne : string = "Wassou " *) *)
(* let ligne2 = input_line ouvrir;; *)
(* (* ligne2 : string = "ise" *) *)
(* let ligne3 = input_line ouvrir;; *)
(* (* ligne3 : string = "wash" *) *)

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
