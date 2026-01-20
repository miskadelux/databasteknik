CREATE DATABASE skolan;
USE skolan;

CREATE TABLE lärare (
  lärar_id INT PRIMARY KEY AUTO_INCREMENT,
  lärare_namn VARCHAR(100),
  lärare_telefonnummer VARCHAR(100)
);

CREATE TABLE kurser (
  kurs_kod VARCHAR(10) PRIMARY KEY,
  kurs_namn VARCHAR(100),
  lärar_id INT,
  FOREIGN KEY (lärar_id) REFERENCES lärare(lärar_id)  -- Lärare kopplas till KURS!
);

CREATE TABLE studenter (
  student_id INT AUTO_INCREMENT PRIMARY KEY,
  student_namn VARCHAR(100),
  student_mail VARCHAR(100)
);

CREATE TABLE student_kurser (  -- Endast student + kurs + betyg!
  student_id INT,
  kurs_kod VARCHAR(10),
  betyg CHAR(1),
  PRIMARY KEY (student_id, kurs_kod),
  FOREIGN KEY (student_id) REFERENCES studenter(student_id),
  FOREIGN KEY (kurs_kod) REFERENCES kurser(kurs_kod)
);

-- Lägg till data
INSERT INTO lärare (lärare_namn, lärare_telefonnummer) 
VALUES ('Anna Andersson', '070111');

INSERT INTO lärare (lärare_namn, lärare_telefonnummer) 
VALUES ('Per Persson', '070222');

INSERT INTO kurser VALUES ('dv1668', 'Databasteknik', 1);  -- Anna undervisar
INSERT INTO kurser VALUES ('ma1234', 'Matematik', 2);      -- Per undervisar

INSERT INTO studenter (student_namn, student_mail) 
VALUES ('Miha Kosmac', 'miha@bth.se');

INSERT INTO studenter (student_namn, student_mail) 
VALUES ('Johan Svensson', 'johan@bth.se');

INSERT INTO student_kurser VALUES (1, 'dv1668', 'A');
INSERT INTO student_kurser VALUES (2, 'dv1668', 'B');
INSERT INTO student_kurser VALUES (1, 'ma1234', 'C');

-- Se resultatet
use skolan;
SELECT * FROM kurser;
SELECT * FROM studenter;
SELECT * FROM lärare;
SELECT * FROM student_kurser;

use skolan;
SELECT 
    studenter.student_namn,
    kurser.kurs_namn,
    lärare.lärare_namn AS lärare,
    student_kurser.betyg
FROM student_kurser
JOIN studenter ON student_kurser.student_id = studenter.student_id
JOIN kurser ON student_kurser.kurs_kod = kurser.kurs_kod
JOIN lärare ON kurser.lärar_id = lärare.lärar_id;