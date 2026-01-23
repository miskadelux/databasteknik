#Scenario: Ett bibliotek vill spara:

- Böcker: ISBN, titel, utgivningsår, genre
- Författare: namn, nationalitet
- Låntagare: personnummer, namn, email
- Utlåning: En låntagare kan låna många böcker. 
- Vi vill veta: lånedatum, återlämningsdatum, om boken är återlämnad (ja/nej)

Extra info:

- En bok kan ha flera författare (som vi övade tidigare!)
- En bok kan lånas ut flera gånger (av olika personer - vid olika tillfällen)
- Vi vill kunna se historik av alla utlåningar (även gamla)

Din uppgift:

1. Rita ER-diagram (på papper eller beskriv i text med rutor)
2. Identifiera: Vilka tabeller behövs?
3. Tänk: Var ska "återlämningsdatum" sparas? I böcker? Låntagare?
4. Skriv SQL-koden för alla tabeller
5. Lägg till testdata: 2 böcker, 2 författare, 2 låntagare, 3 utlåningar

Tips: En av böckerna har 2 författare. En låntagare har lånat samma bok 2 gånger (vid olika tillfällen).