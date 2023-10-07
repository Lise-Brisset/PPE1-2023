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
