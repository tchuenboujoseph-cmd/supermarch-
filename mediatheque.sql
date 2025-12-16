drop database mediatheque;
create database mediatheque;
use mediatheque;

create table ouvrage(
    id_ouvrage int auto_increment primary key,
    title varchar(225)not null,
    auteur varchar(225) not null,
    editeur varchar(225)not null
);

create table emprunteur(
    id_emprunteur int auto_increment primary key,
    nom varchar(225) not null,
    adresse varchar(225)
);

create table motscle (
    id_motscle int auto_increment primary key,
    sujet varchar(225) not null,
     id_ouvrage int not null,
    foreign key (id_ouvrage) references ouvrage(id_ouvrage)
);
 
 create table exemplaire(
    id_exemplaire int auto_increment primary key,
    position varchar(225) not null,
    date_achat date,
    id_ouvrage int not null,
    foreign key(id_ouvrage) references ouvrage(id_ouvrage)
 );

  create table emprunter(
    id_emprunter int auto_increment primary key, 
    id_emprunteur int not null,
    id_exemplaire int not null,
    date_emprunt date, 
    foreign key(id_exemplaire) references exemplaire(id_exemplaire),
    foreign key(id_emprunteur) references emprunteur(id_emprunteur)
 );
