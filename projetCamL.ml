
let nomFic = "C:/Users/Mofid Krim/Documents/Licence Informatique/L3/Caml/projetCamL/dictionnaire_min.txt";;
let nomFic = "C:/Users/c/Documents/L3Info/Projet Caml/dictionnaire_min.txt";; 


let rec canal_to_list = fun ch -> 
	try
		let input = input_line ch in
		input :: canal_to_list ch
	with End_of_file -> [];;

let file_to_list = fun filename -> let ch = open_in filename in 
	canal_to_list ch;;


let liste_mots = file_to_list nomFic;;

let t = Sys__time();;

liste_mots;;

let c = Sys__time();;
	
let temps = c-.t;;
	
type arbre = Feuille of bool
| Noeud of char*arbre*arbre ;;


