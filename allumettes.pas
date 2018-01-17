
program allumettes;

uses crt;

//BUT : écrire un algorithme qui simule le jeu des allumettes.
//ENTREES : Pioche de chaque utilisateur
//SORTIES : Victoire du joueur 1 ou du joueur 2



//MAIN

CONST

totallumettes=21;
var

cptour,total,pioche:integer;

begin
	total:=totallumettes;
	pioche:=0;
	cptour:=0;
while total>1 do
begin
			if (cptour MOD 2=0) then
			begin
				writeln('Au tour du premier joueur de tirer une, deux ou trois allumettes.');
			end
			else
			begin
				writeln('Au tour du second joueur de tirer une, deux ou trois allumettes.');
			end;
			readln(pioche);
	if (pioche<total)then
		begin
			if ((pioche<=3)and(pioche>=1)) then
				begin
					total:=total-pioche;
					cptour:=cptour+1;
					writeln('Il reste ',total,' allumette(s)');
				end
			else
				begin
					writeln('Saisie incorrecte. Veuillez tirer une, deux ou trois allumettes.');
			end;
		end
	else
		begin
		writeln('Il ne reste plus assez d`allumettes.');
	end;
end;
if (cptour MOD 2=0) then
begin
	writeln('Victoire du joueur 2.')
end
else
begin
	writeln('Victoire du joueur 1');
end;
readkey;
END.

{
ALGORITHME : jeu_de_nim_
BUT : Simuler le jeu de nim
ENTREE : Pioche des utilisateurs chacun leur tour
SORTIE : Victoire ou défaite du joueur 1 ou 2
CONST :
totallumettes<-21 : ENTIER
VAR :
	total, pioche,cptour : ENTIER
DEBUT :
//initialisation
	total<-totallumettes
	pioche<-0
	cptour<-0
	TANTQUE (total>1) FAIRE
		SI (cptour MOD 2=0) ALORS
			ECRIRE "Au tour du premier joueur de tirer une, deux ou trois allumettes."
		SINON
			ECRIRE "Au tour du second joueur de tirer une, deux ou trois allumettes."
		FINSI
		LIRE pioche
		SI (pioche<total )ALORS
			SI (pioche<=3) OU (pioche>=1) ALORS
				total<-total-pioche
				cptour<-cptour+1
				ECRIRE "Il reste ",total," allumettes"
			SINON
				ECRIRE "Saisie incorrecte. Veuillez tirer une, deux ou trois allumettes."
			FINSI
		SINON
			ECRIRE "Il ne reste plus assez d'allumettes."
		FINSI
	FINTANTQUE
	SI (cptour MOD 2=0) ALORS
		ECRIRE "Victoire du joueur 2."
	SINON
		ECRIRE "Victoire du joueur 1."
	FINSI
FIN
}

{
	JEU D'ESSAI
Au tour du premier joueur de tirer une, deux ou trois allumettes.
3
Il reste 18 allumette(s)
Au tour du second joueur de tirer une, deux ou trois allumettes.
2
Il reste 16 allumette(s)
Au tour du premier joueur de tirer une, deux ou trois allumettes.
5
Saisie incorrecte. Veuillez tirer une, deux ou trois allumettes.
Au tour du premier joueur de tirer une, deux ou trois allumettes.
1
Il reste 15 allumette(s)
Au tour du second joueur de tirer une, deux ou trois allumettes.
2
Il reste 13 allumette(s)
Au tour du premier joueur de tirer une, deux ou trois allumettes.
3
Il reste 10 allumette(s)
Au tour du second joueur de tirer une, deux ou trois allumettes.
2
Il reste 8 allumette(s)
Au tour du premier joueur de tirer une, deux ou trois allumettes.
3
Il reste 5 allumette(s)
Au tour du second joueur de tirer une, deux ou trois allumettes.
2
Il reste 3 allumette(s)
Au tour du premier joueur de tirer une, deux ou trois allumettes.
2
Il reste 1 allumette(s)
Victoire du joueur 1
	
}