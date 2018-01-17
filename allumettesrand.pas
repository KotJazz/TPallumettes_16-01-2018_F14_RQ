program allumettes_rand;

uses crt;

//BUT : écrire un algorithme qui simule le jeu des allumettes.
//ENTREES : Pioche de l'utilisateur
//SORTIES : Victoire du joueur 1 ou de l'ordinateur

CONST

totallumettes=21;

var

total,pioche,cptour:integer;
begin
	randomize;
	total:=totallumettes;
	cptour:=0;
	pioche:=0;
while total>1 do
begin
	if (cptour MOD 2=0) then
	begin
		writeln('Au tour du premier joueur de tirer une, deux ou trois allumettes.');
		readln(pioche);
	end
	else
	begin
		writeln('Au tour de l`ordinateur de tirer une, deux ou trois allumettes.');
		pioche:=(random(3)+1);
		writeln('L`ordinateur pioche ',pioche,' allumettes.');
	end;
	if (pioche<total)then
		begin
			if ((pioche<=3)and(pioche>=1)) then
				begin
					total:=total-pioche;
					cptour:=cptour+1;
					writeln('Il reste ',total,' allumette(s)');
					pioche:=0
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
	writeln('Victoire de l`ordi')
end
else
begin
	writeln('Victoire du joueur 1');
end;
readkey;

{
ALGORITHME : jeu_de_nim_ordi
BUT : Simuler le jeu de nim contre un ordinateur
ENTREE : Pioche de l'utilisateur lors de son tour
SORTIE : Victoire ou défaite de l'utilisateur

CONST : 

totallumettes<-21:ENTIER

VAR :
	total, pioche, cptour : ENTIER
DEBUT :
//initialisation
	total<-totallumettes
	pioche<-0
	cptour<-0
	TANTQUE (total>1) FAIRE
		SI (cptour MOD 2=0) ALORS
			ECRIRE "Au tour du premier joueur de tirer une, deux ou trois allumettes."
			LIRE pioche
		SINON
			ECRIRE "Au tour de l'ordinateur de tirer une, deux ou trois allumettes."
			pioche<-ALEATOIRE(1,3)
			ECRIRE "L'ordinateur pioche ",pioche,"allumette(s)"
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
		ECRIRE "Victoire de l'ordi."
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
Au tour de l`ordinateur de tirer une, deux ou trois allumettes.
L`ordinateur pioche 1 allumettes.
Il reste 17 allumette(s)
Au tour du premier joueur de tirer une, deux ou trois allumettes.
2
Il reste 15 allumette(s)
Au tour de l`ordinateur de tirer une, deux ou trois allumettes.
L`ordinateur pioche 2 allumettes.
Il reste 13 allumette(s)
Au tour du premier joueur de tirer une, deux ou trois allumettes.
4
Saisie incorrecte. Veuillez tirer une, deux ou trois allumettes.
Au tour du premier joueur de tirer une, deux ou trois allumettes.
3
Il reste 10 allumette(s)
Au tour de l`ordinateur de tirer une, deux ou trois allumettes.
L`ordinateur pioche 3 allumettes.
Il reste 7 allumette(s)
Au tour du premier joueur de tirer une, deux ou trois allumettes.
3
Il reste 4 allumette(s)
Au tour de l`ordinateur de tirer une, deux ou trois allumettes.
L`ordinateur pioche 3 allumettes.
Il reste 1 allumette(s)
Victoire de l`ordi
}
END.