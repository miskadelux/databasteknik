create database bibliotek
use bibliotek

create table Böcker (
    ISBN varchar (100) primary key,
    titel varchar (100),
    utgivningsår int,
    genre varchar (100)
);

create table författare (
    författare_id int auto_increment primary key,
    namn varchar (100),
    nationalitet varchar (100)
);

create table låntagare (
    personnummer int (12) primary key,
    namn varchar (100),
    email varchar (100)
);

create table lånad_bok (
    lånedatum date,
    författare_id int,
    personnummer int (12)
    primary key (författare_id, personnummer)
    foreign key (författare_id) REFERENCES författare(författare_id)
    FOREIGN KEY (personnummer) REFERENCES låntagare(personnummer)
    
)

