# -l1-ALGORITHMIQUES-ET-PROGRAMMATION-1
#  Jeu de Course : Dodge the Cars (Processing)

Un projet de jeu d'arcade interactif développé en **Java** avec l'environnement **Processing**. Ce projet a été réalisé pour mettre en pratique les bases de la programmation orientée objet (POO) et la gestion d'une interface graphique.

##  Auteur
* **Slamani Ali**

---

##  Présentation du Jeu
Le but du jeu est de piloter une voiture sur une route et d'éviter les véhicules qui arrivent en sens inverse. Le score augmente tant que vous restez en vie, et le jeu enregistre votre meilleur score.

### Fonctionnalités :
* **Déplacements fluides** : Contrôle total de la voiture avec le clavier.
* **Système de High Score** : Le meilleur score de la session est affiché à chaque "Game Over".
* **Détection de Collisions** : Gestion des impacts entre le joueur et les obstacles.
* **Environnement Animé** : Effet de défilement du trottoir et de la route pour simuler la vitesse.
* **Rejouabilité** : Possibilité de relancer une partie instantanément après une défaite.

---

##  Structure du Projet

Le projet est organisé de manière modulaire avec plusieurs fichiers `.pde` (classes) :

* **`jeux_de_voitures_Ali.pde`** : Le cœur du jeu. Il contient la boucle principale (`draw`), gère l'affichage des menus et les entrées clavier.
* **`la_voiture_principale.pde`** : Contient la classe `Voiture1`. C'est l'objet que le joueur contrôle.
* **`les_voitures_suplementaires.pde`** : Contient la classe `Voiture` pour les obstacles. C'est ici que se trouve la logique de collision.
* **`le_trotoire.pde`** : Gère les éléments de décor et l'animation de la route.

---

##  Installation et Lancement

1. **Installer Processing** : Téléchargez-le sur [processing.org](https://processing.org/).
2. **Télécharger le code** : Récupérez les 4 fichiers `.pde` de ce dépôt.
3. **Organisation** : Placez les fichiers dans un dossier nommé exactement `jeux_de_voitures_Ali`.
4. **Lancer** : Ouvrez `jeux_de_voitures_Ali.pde` et appuyez sur le bouton **Play**.

### Commandes du jeu :
* **Flèches directionnelles** : Déplacer la voiture (Haut, Bas, Gauche, Droite).
* **Espace** : Recommencer la partie après un "Game Over".

---

##  Concepts Appris
* **Programmation Orientée Objet (POO)** : Création et manipulation de classes et d'instances.
* **Boucle de Jeu (Game Loop)** : Gestion du rendu à 60 images par seconde.
* **Logique Mathématique** : Calcul des coordonnées pour la détection de collision.
* **Tableaux d'objets** : Gestion de plusieurs instances (voitures et trottoirs) simultanément.

---
*Projet réalisé dans le cadre du module Algorithmique et Programmation 1 (UFR ST - Le Havre).*
