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


Ceci est une phrase eronée.


## Séance du 4 octobre
