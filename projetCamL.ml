
let nomFic = "C:/Users/Mofid Krim/Documents/Licence Informatique/L3/Caml/projetCamL/dictionnaire_min.txt";;
(* let nomFic = "C:/Users/c/Documents/L3Info/Projet Caml/dictionnaire_min.txt";; *)



let file_to_list = fun filename -> let ch = open_in filename in
	try
		input_line ch
	with End_of_file -> close_in and [];;


let rec process_file = fun filename -> let ch = open_in filename in
	  -> input_line ch :: input_line ch
    | End_of_file -> close_in ch;;

process_file nomFic;;



let ouvrir = open_in nomFic;;

let ligne = input_line ouvrir;;

let l = [];;
[ligne]@l;;

(* Affiche la premiere ligne du dico *)
let ouvrir_fichier = fun 
filename-> let ouverture = open_in filename in input_line ouverture;;

ouvrir_fichier nomFic;;


