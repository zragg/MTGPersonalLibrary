MTGPersonalLibrary
==================
Ceci est un projet tentant de créer un outil permetant de gérer sa collection de carte Magic the Gathering. Dans un premier temps, je vais me cantonner au français pour ce qui est de la documentation, mais l'anglais devrait arriver rapidement si et seulement si j'arrive à livrer la première version.
Le projet se découpe en trois zones :
  - la base de données : pour le moment que en MySQL
  - les webServices de manipulation : ça devrait être du PHP5
  - les interfaces clients : je pense commencer par une IHM winform en .Net

Comme vous pouvez le voir, rien n'est fait et les choix techniques sont loin d'être fait.

Base de données
---------------
la liste des tables est :
  - CardStatus : le status de la carte (Mythic, Rare, UnCommon, Common)
  - Card : la liste des cartes, sans tenir compte des Éditions.
  - Type : les types de cartes (Artifact, Creature, Enchantment, etc...)
  - SubType : les sous-types de cartes (Elf, Gobelin, etc...) pour le moment seul les sous-type de créature sont renseignés.
  - CardType : Table de liaison entre Card et Type
  - CardSubType : Table de liaisont entre Card et SubType
  - EditionBloc : Information sur les groupes d'édition (ex: le bloc Théros contient : Théros, Born of the Gods, Journey into Nyx)
  - EditionType : liste des types d'édition (de base, bloc, ré-édition, pré-construit, etc...) notion pas encore bien définie.
  - Edition : L'édition à proprement parler
  - EditionCard : Table de jointure entre Card et Edition
  - PhysicalType : Version de la carte (Game's Day, FNM, Foil, standart, etc...)
  - PhysicalState : État de la carte (Mint, Near/Mint, Excelent, Played, etc...) Je me base sur les status de MCM
  - User : la table des utilisateurs
  - UserCard : table de jointure entre Card et User

Features
--------
Je veux en faire une usine à gaz, j'ai plein d'idée mais assez peu de volonté pour les mener à bien, donc je vais y aller par étape.

Lot 1:
  - Création d'un compte utilisateur
  - Authentification
  - Création d'un EditionBloc
  - Création d'une Edition
  - Création d'une carte
  - Association d'une carte à une Edition

Lot 2:
  - Import en masse de carte d'une Edition via MCM
  - Ajout d'une carte à un utilisateur
  - Rapport : taux de remplissage des Editions

Lot3:
  - Sold List
  - Wish List

Lot4:
  - Where is it ?

Lot5:
  - Client : android, windows, web, Linux, etc
  - English documentation
