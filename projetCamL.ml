
(* ouvrir : in_channel = <abstr> *)

(* let ouvrir = open_in ;; *)

(* let ligne = input_line ouvrir;; *)
(* (* ligne : string = "Wassou " *) *)
(* let ligne2 = input_line ouvrir;; *)
(* (* ligne2 : string = "ise" *) *)
(* let ligne3 = input_line ouvrir;; *)
(* (* ligne3 : string = "wash" *) *)


let nomFic = "C:/Users/Mofid Krim/Documents/Licence Informatique/L3/Caml/projetCamL/dictionnaire_min.txt";;
(* let nomFic = "C:/Users/c/Documents/L3Info/Projet Caml/dictionnaire_min.txt";; *)

(* let process_file process filename = *)
    (* let ch = open_in filename in *)
    (* try  *)
		(* while true  *)
			(* do process(input_line ch)  *)
			(* done *)
    (* with End_of_file -> close_in ch;; *)
(* process_file = (string -> 'a) -> string -> unit = <fun> *)

(* process_file print_endline nomFic;; *)



(* let file_to_list = fun filename -> let ch = open_in filename in *)
	(* try *)
		(* while true *)
		(* do *)
			(* [input_line ch] @ [input_line ch] *)
		(* done *)
	(* with End_of_file -> close_in ch;; *)


(* let rec process_file = fun filename -> let ch = open_in filename in *)
	  (* -> input_line ch :: input_line ch *)
    (* | End_of_file -> close_in ch;; *)

(* file_to_list nomFic;; *)

(* ouvrir : in_channel = <abstr> *)

let ouvrir = open_in nomFic;;

let ligne = input_line ouvrir;;

let l = [];;
[ligne]@l;;

let ouvrir_fichier = fun 
filename-> let ouverture = open_in filename in input_line ouverture;;

ouvrir_fichier nomFic;;


