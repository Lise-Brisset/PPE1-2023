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

Mon groupe est composée de Solomiia et Natalia.


Concernant les exercices, j'ai rencontré des problèmes, lorsque je revenais en arrière sur mes versions, il m'était impossible de push les modifications car tous mes fichiers étaient affichés comme modifiés.
J'ai donc après plusieurs tentatives, décidé de cloner mon git SSH sur le disque dur qui n'est pas partagé avec mon dualboot Windows. Ce dernier pourrait être à l'origine des problèmes rencontrées.

	

## Séance du 4 octobre

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
	- < : envoie les données du fichiers suivant dans le terminal
	- > : envoie les données dans le fichier suivant (attention, ceci écrase le données du fichier existant)
 	- 2> : envoie l'erreur dans l'output
	- >& : envoie l'erreur et le résultat dans l'output
	- >> : envoie les données dans le fichier suivant sans écraser ce qui existe déjà.

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
	- # : permet d'écrire un commentaire
	- #!/usr/bin/bash : indispensable au début du script pour indiquer à la machine qu'il s'agit d'un fichier script bash
	- chmod +x <nom_script.sh> : à entrer dans le terminal afin de rendre le fichier exécutable.
	- les variables, ex : chat="miaou"
	- les arguments, ex : $1, $2, $3, etc.
Pour faire appel à un scrip, après l'avoir rendu exécutable, utiliser la commande : 
	bash <nom_scritp.md> <argument1> <arguement2> <arguement3> <etc>
	

Remarques : 
- J'ai ajouté un document pdf dans le fichier Exercices>seance4>exercices_seance4.pdf, qui détaille l'ensemble de mes réponses aux exercices pour le semaine prochaine.
- J'ai rencontré des difficultés pour comprendre le fonctionnement des arguemnts.
- Je n'ai pas bien réussi dans la question 2 exercice 1 sur les arguments à faire appel à au script précédent. J'ai donc réécrit entièrement la commande plutôt que de faire appel à cette dernière.
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
