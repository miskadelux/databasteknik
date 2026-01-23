Scenario: En skola har en DÅLIG databas:
kurs_tabell:
kurskod | kursnamn      | lärare_namn    | lärare_telefon | student_namn | student_email | betyg
--------|---------------|----------------|----------------|--------------|---------------|-------
DV1663  | Databasteknik | Anna Andersson | 070111         | Miha Kosmac  | miha@bth.se   | A
DV1663  | Databasteknik | Anna Andersson | 070111         | Johan S      | johan@bth.se  | B
MA1234  | Matematik     | Per Persson    | 070222         | Miha Kosmac  | miha@bth.se   | C
Din uppgift:

Identifiera problemen: Vad är fel med denna design? (redundans, anomalier)
Normalisera till 3NF: Rita/beskriv hur du skulle dela upp detta i flera tabeller
Skriv CREATE TABLE för din normaliserade design
Lägg till samma data som i exemplet ovan i dina nya tabeller

Tips: Du behöver minst 4 tabeller! Tänk på vilka "saker" (entities) som finns: kurser, lärare, studenter, och...?