
(* ouvrir : in_channel = <abstr> *)

(* let ouvrir = open_in ;; *)

(* let ligne = input_line ouvrir;; *)
(* (* ligne : string = "Wassou " *) *)
(* let ligne2 = input_line ouvrir;; *)
(* (* ligne2 : string = "ise" *) *)
(* let ligne3 = input_line ouvrir;; *)
(* (* ligne3 : string = "wash" *) *)

(* let nomFic = "C:/Users/Mofid Krim/Documents/Licence Informatique/L3/Caml/Projet Caml/dictionnaire_min.txt";; *)
let nomFic = "C:/Users/c/Documents/L3Info/Projet Caml/dictionnaire_min.txt";;

let file_to_list = fun filename -> let ch = open_in filename in
	try
		input_line ch
	with End_of_file -> close_in and [];;


let rec process_file = fun filename -> let ch = open_in filename in
	  -> input_line ch :: input_line ch
    | End_of_file -> close_in ch;;

process_file nomFic;;

























































































