let nomFic = "C:/Users/Mofid Krim/Documents/Licence Informatique/L3/Caml/projetCamL/dictionnaire_min.txt";;
let nomFic = "C:/Users/c/Documents/L3Info/Projet Caml/dictionnaire_min.txt";; 


(****************************************************************)

let longChaine= fun s->
    string_length s;;

	
let niemeCar = fun (n,s)-> 
   nth_char s (n-1);;
   
   
let sousChaine = fun (s,n,m) ->
if m<n then ""
else sub_string s (n-1) (m-n+1);;


let tetec= fun 
""-> failwith "La chaine est vide"
| s-> niemeCar(1,s);;

let tetes= fun s-> string_of_char(tetec(s));;

let reste = fun 
""-> failwith"La chaine est vide"
| s-> sousChaine (s,2,longChaine(s));;

(****************************************************************)

(*extraction dico dans string list*)
let rec canal_to_list = fun ch -> 
	try
		let input = input_line ch in
		input :: canal_to_list ch
	with End_of_file -> [];;

let file_to_list = fun filename -> let ch = open_in filename in 
	canal_to_list ch;;

file_to_list nomFic;;
(*fin extraction*)

(*definission du type arbre pour la representation de la liste*)
type arbre = Feuille of bool
| Noeud of char*arbre*arbre list;;


(*exemple d'arbre avec un seul mot*)
let bonjour = Noeud(` `, Feuille false, 
				[Noeud(`b`, Feuille false,
					[Noeud(`o`, Feuille false,
						[Noeud(`n`, Feuille true,
							[Noeud(`j`, Feuille false,
								[Noeud(`o`, Feuille false,
									[Noeud(`u`, Feuille false,
										[Noeud(`r`, Feuille true,[])])])])])])])]);;

										
										
(*premier noeud de l'arbre*)
let start = Noeud(` `, Feuille false, []);;



(*Ajout d'un mot dans un arbre existant *)
let rec ajout_mot = fun 
(Noeud(a,b,l), str) -> if(reste(str) = "")
							then Noeud(a,b, Noeud(tetec(str), Feuille true, [] )::l)
							else Noeud(a,b,ajout_mot(Noeud(tetec(str), Feuille false, []), reste(str))::l)
|(_,_) -> failwith "Erreur";;
(* ajout_mot : arbre * string -> arbre = <fun> *)


let is_equals = fun
(Noeud(a,b,l), c) -> c = a;;
(*is_equals : arbre * char -> bool = <fun>*)

let rec mot_in_arbre = fun 
(Noeud(a,b,l), "") -> Noeud(a,Feuille true,l)
|(Noeud(a,b, []), str) -> ajout_mot(Noeud(a,b,[]), str)
|(Noeud(a,b,(n :: l)), str) -> if (is_equals(n,tetec(str)))
								then Noeud(a,b,(mot_in_arbre(n,reste(str))) :: l)
								else ajout_mot(Noeud(a,b,(n::l)), str)
|(_,_) -> failwith "Erreur";;
(* char_present : arbre * string -> arbre = <fun> *)


let rec dico_arbre = fun 
[] -> Noeud(` `, Feuille false, [])
|(a :: l) -> ch










(* Verifie si une lettre est deja le fils d'un arbre*)	
let rec char_in_arbre_list = fun ([], c) -> false
| ((Noeud(a,b,f) :: l), c) -> if(a = c)
								then true
								else char_in_arbre_list(l, c)
| (_,_) -> false;;
(*#char_in_arbre_list : arbre list * char -> bool = <fun>*)

								
let rec char_in_arbre = fun (Noeud(_,_,l),c) -> char_in_arbre_list(l, c)
|(_,_) -> failwith "Erreur dans les données";;
(*char_in_arbre : arbre * char -> bool = <fun>*)

(*Fin de verification*)





let rec char_in_fils = fun (Noeud(a,b,fils), c) -> 
	let rec char_in_fils_list = fun ([], c) -> []
		|((Noeud(a1,b1,f1)::l), c) -> if(a1 = c)
			then [Noeud(a1,b1,f1)]
			else char_in_fils_list(l,c) in
				char_in_fils_list(fils,c);;
				

let rec mot_in_arbre = fun (Noeud(a,b,[]), str) -> ajout_mot(Noeud(a,b,[]), str)
|(Noeud(a,b,f), str) -> let present = char_in_fils(Noeud(a,b,f), tetec(str)) in 
							if(present = [])
								then ajout_mot(Noeud(a,b,f), str)
								else Noeud(a,b, mot_in_arbre(hd(present), reste(str)) :: f);;





let rec ajout_mot_if_not_exist = fun 
(Nooeud(a,b,l), str) -> if(char_in_arbre(Noeud(a,b,l), tetec(str)))
	then ajout_mot(Noeud(a,b,l), str)
	else
	
	
let rec ajout_mot_if_not_exists = fun
(Noeud(a,b,l), str) -> 


let rec mot_in_arbre = (Noeud(a,b,[]), str) -> ajout_mot(Noeud(a,b,[]), str)
|(Noeud(a,b,f), str) -> if(reste(str) = "")
	then Noeud(a,b,Noeud(tetec(str), Feuille true, [])::f);;
	else let rec in_fils = fun (Noeud(a,b,[]),str) -> ajout_mot(Noeud(a,b,[]), str)
		|
		
		
		char
							
							
							

type hash = N of int | S of hash list;;

let rec string_to_arbre = fun str -> if(reste(str) = "")
	then Noeud (tetec(str), Feuille true, [])
	else Noeud (tetec(str), Feuille false, [string_to_arbre(reste(str))]);;

let arbre_gen = fun str -> Noeud( ` ` , Feuille false, [string_to_arbre str]);;

let test = ["abcde", "azerty"];;

let rec list_to_arbre = fun [] -> Noeud (` `, Feuille false, 



type graphe = Graphe of (char * char list) list;;
Graphe([(`a`, [`b`]); (`b`, [`a`;`c`])]);;




let liste_mots = file_to_list nomFic;;

let t = Sys__time();;

liste_mots;;

let c = Sys__time();;
	
let temps = c-.t;;



