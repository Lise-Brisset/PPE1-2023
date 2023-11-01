# Journal de Lise
## Séance du 20 septembre

Cette semaine nous avons vu plusieurs notions. 
L’ensemble du cours est composé d’une partie cours et théorie, suivie d’une partie pratique qui débouchera sur le rendu d’un projet en groupe de 3 personnes.
Le projet est à faire en groupe mais le journal à remplir individuellement.

Nous avons aussi vu le début du fonctionnement de l’outil Github : permet d’enregistrer différentes versions du projet dans le temps, l’utilisation des issues lorsque l’on rencontre un problème.

Nous avons appris le fonctionnement de Unix. La notion importante est que tout est fichier et dossier dans un ordinateur, allant de la souris au système de connexion du réseau par exemple.

Nous avons vu que les fichiers fonctionnaient sous forme d’une arborescence et aussi comment parcourir cette arborescence avec le terminal de commande sous Linux.
Les commandes à retenir sont les suivantes : 
- / : racine de l’arbre
- ~/ : dossier personnel
- ./ dossier courant
- ../ dossier parent

Nous avons distingué le chemin absolu du chemin relatif : 
- chemin absolu : commence à la racine et ne dépend pas du contexte,
- chemin relatif : est dépendant du dossier dans lequel nous nous trouvons.

Nous avons vu les caractères de remplacement lorsque l’on cherche un fichier et que nous ne sommes pas sûre de son nom avec * qui peut remplacer une suite de caractères et ? qui n’en remplace qu’un seul.

Ensuite, nous avons vu la syntaxe à suivre dans les commandes du terminal : 
	nom [-o] [arguments]		ou 	nom [--option] [arguments]

L’option n’est pas obligatoire tandis que l’argument l’est.

Nous avons exploré quelques commandes comme la commande man qui prend pour argument le nom d’une autre commande afin de connaître son utilité.

Pour sortir du man, nous devons appuyer sur la touche q.

Pour finir nous avons fait nos premiers pas sur GitHub qui est un système de gestion de version partagé et qui permet de stocker nos fichiers autre part que sur notre ordinateur.


## Séance du 27 septembre

Lors de cette séance nosu avons revue les éléments de chemins sur le terminal ainsi que certaines commandes à connaitre comme : cd, ls, pwd, cat, less, xc, echo, head, tail, mkdir, cp, mv, rm, rmdir, file, man ou l'option --help. Ceci a été rapidement revue grâce à des éléments de corrections de l'exercice de la semaine précèdente qui consistait à ranger de nombreux fichiers avec des extensiosn différentes dans des dossiers par année puis par mois. 

Lors de ce cours nous avons pour la première fois appris à créer une clé privé/ public de sécurité que nous avons lié à notre compte github afin de mieux protéger nos données à chaque ajout sur ce dernier. 
Nous avons choisi de créer une clé de type ed25519 car elle a moins de chance d'être hackée que la clé de type RSA par exemple. 

La commande pour créer la clé est : ssh-keygen -t ed25519

La création de la clé va créer un fichier sur notre utilisateur, on va y ajotuer un mot de passe pour plus de sécurisaiton. 

Pour vérifier que la clé tourne bien : eval "$(ssh-agent -s)"

Pour lié l'agent à la clé : ssh-add ~/.ssh/id_ed25519

Pour prendre la clé publique et la mettre sur github : cat .ssh/id_ed25519.pub

On a copié la clé qui s'est affichée et sur github : profil>Settings>SSH ans GPG keys > New SSH key : on colle la nouvelle clé et on lui donne un nom puis nous validons. 

Dans une seconde partie du cours, nous avons vu comment lancer des commandes sur git depuis le terminal.
Voici la syntaxe des commandes git : git <sous-commande> [-options…] [arguments…]

Voici les commandes les plus importantes : 
- git add <file> : pour indiquer les fichiers que nous voulons ajouter
- git status : pour voir les changements qui ont déjà été effectués
- git commit : pour ajouter un message à ce qui a été ajouté
- git push : pour "pousser" les modification, soit les insérer dans le dépot git
- git fetch : pour récupérer les nouveaux changements
- git rm <file> : pour supprimer le fichier du dépot
- git log : pour lister les commit déjà fait

Il est possible aussi d'ajouter des tag avec la commande : 
	git tag [-a] [-m message] <tagname> [commit]

[-a] [-m message] : permet d'ajouter un message
<tagname> : pour donner un nom au nouveau tag
[commit] : pour indiquer le commit en particulier que nous souhaitons modifier, autrement c'est tous les derniers commit qui seront pris en compte. 



## Séance du 4 octobre

Lors de ce cours nous avons vu principalement comment revenir et corriger nos erreur sur github.

Nous avons vu tout d'abord ce qu'est le HEAD sur git et comment le manipuler. Il s'agit du dernier commit sur lequel nous avons travailler.

La commande "git log" permet d'avoir un aperçu de tous les derniers commit que nous avons effectué sur notre git. La commende "git status" permet quand a elle de savoir si notre HEAD est sunchroniser ou en avance par rapport au dernier HEAD eenregistré sur git.

Voici diverses commandes permettant d'explorer le HEAD :
- <tag> : étiquette d'un commit ;
- ~[N] : permet de revenir en avant de N commit ;
- ^[N] : N énième parent du commit.

Les deux commandes permettant de revenir en arrière sur nos commits ou d'annuler des changements sont "git reset" et "git revert".
Ces commandes peuvent prendre la forme par exemple "git reset HEAD~" et "git reset <nom du tag>".

Il existe deux options utiles à "git reset" et "git revert" qui sont :
- --soft : permet de revenir sur le commit selectionné sans toucher au reste ;
- --hard : permet de revenir sur le commit selectionné et perdre tou ce qu'il y a après.


J'ai quelques incompréhensions encore avec ces deux commandes :
je ne comprends pas bien quelle est la différence entre "reset" et "revert".


Pendant une seconde partie du cours, nous avons commencé la feuille d'exercice 02-git-more-exercices.pdf. Nous avons fait la correction jusqu'à la question 1.b.

Les dernières 30 min ont été consacrées à la présentation de ce qui est attendu pour le projet final.


Concernant les exercices, j'ai rencontré des problèmes, lorsque je revenais en arrière sur mes versions, il m'était impossible de push les modifications car tous mes fichiers étaient affichés comme modifiés.
J'ai donc après plusieurs tentatives, décidé de cloner mon git SSH sur le disque dur qui n'est pas partagé avec mon dualboot Windows. Ce dernier pourrait être à l'origine des problèmes rencontrées.


# Point sur le projet :
Mon groupe est composé de Solomiia et Natalia.

	

## Séance du 11 octobre

Lors de cette séance nous avons commencé par faire une correction des exercices sur l'utilisation de git reset et git revert.
Voici ce qui est à retinir : 
- git push : envoie les données de mon ordinateur vers le serveur
- git pull : vient télécharger les données du serveur vers mon ordinateur
- git revert : vient prendre le commit selectionné et le jette, on annule complètement le commit
- git reset : revient en arrière dans le temps à travers les commits, en parcourant tout le chemin.
	
Nous avons ensuite vu le généralité sur les flux de données. Voici les commandes les plus importante à connaitre : 
- stdin : entrée où l'on rentre les données (par défaut el clavier)
- stdout : sortie où s'affiche les données (par défaut l'écran)
- stderr : sortie pour les erreurs (par défaut l'écran).

La commande wc permet de compter dans l'ordre respestif le nombre de lignes, le nombre de mots et le nombre de caractères.
Voici les commandes permettant de moduler la direction des flux : 
- "<" : envoie les données du fichiers suivant dans le terminal
- ">": envoie les données dans le fichier suivant (attention, ceci écrase le données du fichier existant)
- "2>" : envoie l'erreur dans l'output
- ">&" : envoie l'erreur et le résultat dans l'output
- ">>" : envoie les données dans le fichier suivant sans écraser ce qui existe déjà.

Nous avons ensuite vu la redirection entre les commandes. C'est à dire qu'il est possible d'imbriquer les commandes les unes dansles autres afin d'exécuter une suite de commande sur une ligne et avoir seulement le résutlat final.
Ceci se fait grâce au caractère pipe | et prend la forme suivante : 
	commande1 | commande2 
	--> renvoie en sortie l'erreur et le résultat

Nous avons ensuite commencé l'exercice sur les commandes imbriquées. Ce dernier nous a permis aussi d'utiliser les commandes suivantes : 
- grep : rechercher un motif dans l'entrée
- sort : trier les lignes
- uniq : supprimer les doublons
- echo : affiche du texte

Nosu avons fini sur une introduction aux scripts bash. Ces dernier sont sous l'extension script.sh. Voici les éléments à connaitre sur les scripts bash : 
- "#" : permet d'écrire un commentaire
- "#!/usr/bin/bash" : indispensable au début du script pour indiquer à la machine qu'il s'agit d'un fichier script bash
- "chmod +x <nom_script.sh>" : à entrer dans le terminal afin de rendre le fichier exécutable.
- les variables, ex : chat="miaou"
- les arguments, ex : $1, $2, $3, etc.
Pour faire appel à un scrip, après l'avoir rendu exécutable, utiliser la commande : 
	bash <nom_scritp.md> <argument1> <arguement2> <arguement3> <etc>
	

Remarques : 
- J'ai ajouté un document pdf dans le fichier Exercices>seance4>exercices_seance4.pdf, qui détaille l'ensemble de mes réponses aux exercices pour le semaine prochaine.
- J'ai rencontré des difficultés pour comprendre le fonctionnement des arguemnts.
- Je n'ai pas bien réussi dans la question 2 exercice 1 sur les arguments à faire appel à au script précédent. J'ai donc réécrit entièrement la commande plutôt que de faire appel à cette dernière.
	


## Séance du 18 octobre

Lors de cette séance nous avons commencé par la correction des exercices sur les scripts de la semaine dernière.

Nous avons ensuite vu les instructions conditionnelles comme if, for et while utiles dans les scripts bash :
- if : sous la forme
					if [ condition ]
					then
						echo "condition valide"
					else
						echo "condition non valide"
					fi
	Le else est facultatif tandis que le then ne l'est pas.
	"Si la condition est vraie alors je fais ça, autrement je fais ça."

- for : sous la forme
					N=0
					for ELEMENT in a b c d e
					do
						N=$(expr $N + 1)
						echo "Le $N ieme element est $ELEMENT"
					done
	"On vient parcourir tous les éléments de la liste un par un et on lui applique des evenements."

- while : sous la forme
					while [ condition ]
					do
						echo "je continue à boucler";
					done
	"Tant que la condition n'est pas atteinte la boucle continue à tourner."
	A noter que le point virgule n'est pas toujours obligatoire mais il est bien de prendre l'habitude de le mettre car il est souvent source d'erreur.

Les conditions portent sur l'argument, qui est soit le chemin, soit une chaine de caractères, soit un entier numérique. L'objectif est de vérifié si la condition est vraie. Voici la liste des conditions qui peuvent être appliquées :
- "-f nom_fichier": vérifier que le fichier existe
- "-d nom_dossier": vérifier que le dossier existe
- "-s nom_fichier": vérifier que le fichier existe et n’est pas vide
- "= ou !=" : vérifie si les chaines sont égales ou différentes
- "< ou > : vérifie si une chaîne est avant ou après une autre dans l’ordre alphabétique
- "-n chaine" : vérifie si la chaine n'est pas vide
- "-z" : vérifie si la chaine est vide
- "a -eq b" : equal
- "a -ne b" : not equal
- "a -lt b" : less than
- "a -gt b" : greater than
- "a -le b" : less or equal
- "a -ge b" : greater or equal.

Nous avons ensuite vu ce qu'était un document HTML :
- head
- body
- balises
- éléments de texte dans balises.

Nous avons vu la nomenclature des codes HTTP :
- 1xx : information
- 2xx : réussite
- 3xx : redirection
- 4xx : erreur du client
- 5xx : erreur du serveur.
Dans le cadre du projet nous allons aspirer le contenu HTML de pages webs et en fonction de la réussite nous aurons un code comme ci-dessus.

Pour lire le contenu des pages HTML sur le terminal, nous utilisons Lynx.
ex : "lynx plurital.org"

Pour récuperer le contenu de la page : "lynx -dump plurital.org". Pour retirer les liens : "lynx -dump -nolist plurital.org".

Voici aussi deux commandes qui seront utilent à notre projet :
- wget : écrit dans un fichier
- curl : écrit sur la sortie standard.


# Point sur le projet :
Nous hésitions entre plusieurs termes comme "écologie", "culture". Mais nous pensons choisir finalement le terme "santé" car ce dernier peut ouvrir à une discussion autour de la perception de la santé physique, mentale et/ou psychologique en fonction des langues et donc des mentalités et priorités de chaque type de locuteur. De plus le terme "culture" a déjà été traiter dans les années précédentes, donc nous trouvions plus intéressant de faire un mot qui n'a pas encore été choisi dans ce cours.
Nos langues sont les suivantes : le français, l'ukrainien et le chinois.
Ces trois langues sont bien oposées de par leur localisation, la culture de chaque groupe de locuteurs. Le mot "santé" peut donc ressortir et mettre en avant des utilisations différentes en fonction des langues. Il est donc interessant de venir mettre en comparaison ceci.
Voici le document calc partagé sur lequel nous collectons nos liens : https://docs.google.com/spreadsheets/d/118GdMKBAtoeMK5x9or71w-0pbWMkHkoaSMmy-oIViuE/edit?usp=sharing



## Séance du 25 octobre

Lors de cette séance nous nous sommes penchés sur le début de la constitution de notre projet. Pour celà nous avons vu des exemples de ce qu'attendre les professeurs de nous et de comment y parvenir par étapes.

Voici les étapes de notre projet : choisir le mot (un terme polysémique et d'autant plus interessant à analyser); réunir les urls des sites où ce termes apparait dans les trois langues; construire un tableau qui contiendra tous les éléments que nous avons besoin afin de traiter et nettoyer correctement les contenus de nos pages (il est important par exemple que nos pages soient toutes sous le même encodage, UTF-8, afin de venir placer tout le texte dans un même fichier); trouver le code HTTP de chacune de nos urls afin de s'assurer qu'elles sont consultables dans notre terminal.

Nous verrons plus tard d'autres étapes telles que dump-html, dump-text, les occurrences, les contextes et les concordances.

Nous avons commencé pendant la suite du cours par nous entrainer sur un miniprojet permettant de nous évaluer chacun sur notre capacité à débuter le projet seul.
Pour celà, il nous était demandé de récupérer le urls du fichier fr.txt et d'appliquer un traitement dessus avec un script bash miniprojet.sh, dans lequel nous renvoyons les informations sous forme de tableau avec des tabulations.


# Point sur le projet :
Pour notre projet, nous souhaitons toujours travailler sur le mot "santé" (en français), "Здоров'я" (en ukrainien) et "健康" (en chinois).
Effectivement, ce terme est très interessant à traiter car la santé est un terme faisant référence à plusieurs sens ou sous-sens comme la santé physique, la santé morale, le sysnonyme d'être en forme, santé publique générale ou santé personnelle.
Nous pouvons nous attendre par exemple en français à retrouver le mot santé dans un contexte de santé physique et psychologique, bien être personnel ou santé publique. Bien qu'en chinois, nous pouvons d'autant plus nous attendre à la santé psychique et physique. En ukrainien, nous émettons l'hypothèse de trouver plutôt des informations venant du gouvernement et des nouvelles à propos du Covid-19.

Nous avons déjà bien avancé dans la recherche de nos urls. Ces dernières s'orientent plutôt vers des sites officiels sur la santé comme le site santepubliquefrance.fr, ou des sites d'informations sur les nouvelles autour de la santé comme www.lemonde.fr rubrique santé, ou encore des forums de questionnement autour de la santé.
Dans la santé nous pouvons aussi nous interesser à ses innovations, aux dernières technologies qui s'installent.


# Concernant le miniprojet :
Je n'ai pas réussi à comprendre comment régler le code HTTP 301 qui s'affiche et pour lequel nous devrions afficher le code HTTP de l'url de redirection.
Concernant l'encodage, lorsque j'ai voulu ajouter des conditions avec "if" pour indiquer l'encodage s'il est présent, cette dernière m'a posé problème en m'indiquant que le "do" ne devrait pas être là. Hors si je retire le "do", je ne sais pas comment indiquer le fichier d'entrée autrement qu'avec la ligne "done < "../urls $fichierURL";".
Dans ces conditions, le programme se lance mais n'affiche que les lignes des urls qui ont un code HTTP 200.
Je n'ai pas mis le résutlat en sortie dans un document HTML car nous n'avons pas encore abordé ce point en classe.
Les premières étapes du miniprojet fonctionnaient correctement car chaque url était dans un tableau avec une numoration et le code HTTP, le tout séparé de tabulation. Cependant depuis l'ajout de la condition "if" pour ajouter l'encodage, le script ne fonctionne plus correctement et ne renvoie plus le tableau.
