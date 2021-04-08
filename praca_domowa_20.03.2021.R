#1. Napisz funkcję sprawdzająca czy 1 liczba jest podzielna przez druga użyj - %%

ifDivided <- function(x, y) {
  x %% y == 0
}

ifDivided(6, 3)
ifDivided(4, 3)


#2. Pociąg z Lublina do Warszawy przejechał połowę drogi ze średnią prędkością 120 km/h.

#Drugą połowę przejechał ze średnią prędkością 90 km/h.

#Jaka była średnia prędkość pociągu.

lcm <- function(x, y) {
  
  if(x > y) {
    greater = x
  } else {
    greater = y
  }
  
  while(TRUE) {
    if((greater %% x == 0) && (greater %% y == 0)) {
      lcm = greater
      break
    }
    greater = greater + 1
  }
  return(lcm)
}

s1 <- 120
s2 <- 90
lcmValue <- lcm(s1, s2)

avSpeed <- 2/((lcmValue/s1/lcmValue) + (lcmValue/s2/lcmValue))

paste("średnia prędkość pociągu wynosiła", round(avSpeed), "km/h")

#3. Utwórz funkcję obliczającą współczynnik korelacji r Pearsona dla 2 wektorów o tej samej długości.
Wczytaj dane plik dane.csv i oblicz współczynnik dla wagi i wzrostu. W komentarzu napisz co oznacza wynik.

?cor
cor(1:10, c(1,5,2,9,4,2,2,4,5,7))

#4. Napisz funkcję zwracającą ramke danych z danych podanych przez użytkownika 
#stworzDataFrame <- function(ile=1)
W pierwszym wierszu użytkownik podaje nazwy kolumn. w kolejnych wierszach zawartość wierszy ramki danych ( tyle wierszy ile podaliśmy w argumencie ile. ile=1 oznacza, że gdy użytkownik nie poda żadnej wartości jako parametr, domyślna wartością będzie 1)

#5 Napisz funkcję , która pobiera sciezkeKatalogu, nazweKolumny, jakaFunkcje, DlaIluPlikow i liczy: 
#mean, median,min,max w zależności od podanej nazwy funkcji w argumencie, z katologu który podaliśmy i z tylu plików ilu podaliśmy dla wybranej nazwy kolumny. 
UWAGA: w podanych plikach R pobierając komórki nazwane liczbami R wstawi przed nazwy X. Funkcję przetestuj dla katalogu smogKrakow.zip.  Wykonując obliczenia pomiń brakujące wartości.

liczZplikow <- function(sciezka,nazwaKolumny,jakaFunkcja="mean",DlaIluPlikow=1){ 
  
  #...
  
}

Lista plików w katalogu: 
  
  list.files(sciezka)

Omijanie na : na.omit(myDataFrame[[nazwaKolumny]])
Do złączania stringów: 
  
  paste("string1","string2",sep="TU WSTAW SEPARATOR")
Gdy mamy, rózne oznaczenia NA w plikach możemy wykorzystać ( w tym wypadku pusty znak i NA:
                                                               na.strings=c("","NA")
                                                               