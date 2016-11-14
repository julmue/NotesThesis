
# Entscheidbarkeit

In der theoretischen Informatik heißt eine Eigenschaft auf einer Menge
entscheidbar (auch rekursiv, rekursiv ableitbar) wenn es ein
Entscheidungsverfahren gibt.

Ein Entscheidungsverfahren ist ein Algorithmus, der für jedes Element der
Menge beantworten kann, ob es die Eigenschaft hat oder nicht.

Wenn es kein solches Entscheidungsverfahren gibt, dann nennt man die 
Eigenschaft unentscheidbar.

Als Entscheidungsproblem bezeichnet man die Frage, ob und wie für eine
gegebene Eigenschaft ein Entscheidungsverfahren formuliert werden kann.

Während die wichtigsten syntaktischen Eigenschaften von Programmen entscheidbar
sind, sind im Allgemeinen nach dem Satz von Rice beliebeige nicht-triviale
Eigenschaften von Programmen unentscheidbar,
zum beispiel die Terminierung eines Programmes auf einer Eingabe 
(Halteproblem) oder die Funktionsgleichheit zweier Programme (Äquivalenzproblem)

Ursprünglich speziell für die Gültigkeit von Formeln gemeint,
wird der Begriff inzwischen für beliebeige Eigenschaften auf abzählbaren Mengen
Verwendet.

Der Begriff des Algorithmus setzt ein Berechnungsmodell voraus;
wenn nichts abweichendes gesagt wird, sind die Turingmaschinen oder ein 
gleichwertiges Modell gemeint.

Der Entscheidbarkeitsbegriff wird somit auf den Berechenbarkeitsbegriff
zurückgeführt.

Die Menge M muss Gödelisierbar sein,
der Begriff der Entscheidbarkeit für überabzählbare Mengen (wie s.b. ℝ)
ist nicht definiert.

Entscheidbarkeit ist eine Eigenschaft von Prädikaten und nicht von Aussagen
Entscheidbarkeit sagt nur, dass die Prädikatsmenge nicht durch einen 
Algorithmus berechnet werden kann.

Unentscheidbarkeit bedeutet nicht, dass einer Aussage über einem unentscheidbaren
Problem keine Wahrheitswert zugeorndet werden kann.
Es gibt dann nur keinen Algorithmus der garaniert bei jeder Eingabe der Menge
terminiert.
Beispiel: Beweise aus der Prädikatenlogik
Trifft eine bestimmte Eigenschaft zu terminiert der Algorithmus in endlicher
Zeit auf der Eingabe, wenn nicht muss er nicht terminieren.
Ist das Prädikat unter einer bestimmten Eingabe also wahr und kann ein 
Beweis dafür gefunden werden kann also ein Wahrheitswert zugewiesen werden.

dass heißt eine Entscheidungsprozedur ist total und terminiert immer für 
alle Eingaben.


## Beispiele

### Entscheidbare Prädikate
(Zu jeder entscheidbaren Menge ist auch ihre Komplement entscheidbar)

Alle endlichen Mengen
Die Menge aller geraden Zahlen
Die Menge aller Primzahlen
Gültigkeit der Aussagenlogik
Erfüllbarkeitsproblem der Aussagenlogik (soll das Komplement sein?)

### Nicht entscheidbare Prädikate

Das spezielle Entscheidungsproblem für die Prädikatenlogik wurde 1928
von Hilbert gestellt.
Alan Turing und Alonzo Church haben für das Problem 1936 festgestellt,
dass es unlösbar ist.
Es gibt aber entscheidbare Fragmente der Prädikatenlogik.


Lösbarkeit diophantischer Gleichungen
Die Eigenschaften von diophantischen Gleichungen ist unentscheidbar.


Postsches Korrespondenzproblem.
