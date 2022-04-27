#!/bin/sh
#lektor=natan;
h=$(date +"%H");
m=$(date +"%M");
#Ścieżka do pliku konfiguracyjnego
config="$HOME/.config/gadulec";

	# Wybieramy lektora czytającego czas z pliku konfiguracyjnego
	if [[ -f "$config/gadulec.conf" ]] && [[ $( du $config/gadulec.conf | awk '{ print $1 }') != 0 ]]; then
		lektor="$(/bin/cat $config/gadulec.conf | head -n 1)";
	else
		lektor=magda;
          fi
# Upływające godziny
if [[ "$h" = 01 ]] ; then
echo pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 02 ]] ; then
echo druga | RHVoice-test -p $lektor
else if [[ "$h" = 03 ]] ; then
echo trzecia | RHVoice-test -p $lektor
else if [[ "$h" = 04 ]] ; then
echo czwarta | RHVoice-test -p $lektor
else if [[ "$h" = 05 ]] ; then
echo piąta | RHVoice-test -p $lektor
else if [[ "$h" = 06 ]] ; then
echo szósta | RHVoice-test -p $lektor
else if [[ "$h" = 07 ]] ; then
echo czwarta | RHVoice-test -p $lektor
else if [[ "$h" = 08 ]] ; then
echo czwarta | RHVoice-test -p $lektor
else if [[ "$h" = 09 ]] ; then
echo czwarta | RHVoice-test -p $lektor
else if [[ "$h" = 10 ]] ; then
echo czwarta | RHVoice-test -p $lektor
else if [[ "$h" = 11 ]] ; then
echo czwarta | RHVoice-test -p $lektor
else if [[ "$h" = 12 ]] && [[ "$m" = 00 ]] ; then
echo dwunasta - południe | RHVoice-test -p $lektor
else if [[ "$h" = 12 ]] && [[ "$m" > 00 ]] ; then
echo dwunasta | RHVoice-test -p $lektor
else if [[ "$h" = 13 ]] ; then
echo trzynasta | RHVoice-test -p $lektor
else if [[ "$h" = 14 ]] ; then
echo jest godzina czternasta | RHVoice-test -p $lektor
else if [[ "$h" = 15 ]] ; then
echo piętnasta | RHVoice-test -p $lektor
else if [[ "$h" = 16 ]] ; then
echo szesnasta | RHVoice-test -p $lektor
else if [[ "$h" = 17 ]] ; then
echo siedemnasta | RHVoice-test -p $lektor
else if [[ "$h" = 18 ]] ; then
echo osiemnasta | RHVoice-test -p $lektor
else if [[ "$h" = 19 ]] ; then
echo dziewiętnasta | RHVoice-test -p $lektor
else if [[ "$h" = 20 ]] ; then
echo dwudziesta | RHVoice-test -p $lektor
else if [[ "$h" = 21 ]] ; then
echo dwudziesta pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 22 ]] ; then
echo dwudziesta druga | RHVoice-test -p $lektor
else if [[ "$h" = 23 ]] ; then
echo dwudziesta trzecia | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] ; then
echo jest północ | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 01 ]] ; then
echo minuta po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 02 ]] ; then
echo dwie minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 03 ]] ; then
echo trzy minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 04 ]] ; then
echo cztery minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 05 ]] ; then
echo pięć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 06 ]] ; then
echo sześć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 07 ]] ; then
echo siedem minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 08 ]] ; then
echo osiem minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 09 ]] ; then
echo dziewięć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 10 ]] ; then
echo dziesięć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 11 ]] ; then
echo jedenaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 12 ]] ; then
echo dwanaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 13 ]] ; then
echo trzynaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 14 ]] ; then
echo czternaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 15 ]] ; then
echo piętnaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 16 ]] ; then
echo szesnaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 17 ]] ; then
echo siedemnaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 18 ]] ; then
echo osiemnaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 19 ]] ; then
echo dziewiętnaście minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 20 ]] ; then
echo dwadzieścia minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 21 ]] ; then
echo dwadzieścia jeden minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 22 ]] ; then
echo dwadzieścia dwie minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 23 ]] ; then
echo dwadzieścia trzy minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 24 ]] ; then
echo ddwadzieścia cztery minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 25 ]] ; then
echo dwadzieścia pięć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 26 ]] ; then
echo dwadzieścia sześć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 27 ]] ; then
echo dwadzieścia siedem minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 28 ]] ; then
echo dwadzieścia osiem minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 29 ]] ; then
echo dwadzieścia dziewięć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 30 ]] ; then
echo trzydzieści minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 31 ]] ; then
echo trzydzieści jeden minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 32 ]] ; then
echo trzydzieści dwie minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 33 ]] ; then
echo trzydzieści trzy minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 34 ]] ; then
echo trzydzieści cztery minuty po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 35 ]] ; then
echo trzydzieści pięć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 36 ]] ; then
echo trzydzieści sześć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 37 ]] ; then
echo trzydzieści siedem minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 38 ]] ; then
echo trzydzieści osiem minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 39 ]] ; then
echo trzydzieści dziewięć minut po północy | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 40 ]] ; then
echo za dwadzieścia minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 41 ]] ; then
echo za dziewiętnaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 42 ]] ; then
echo za osiemnaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 43 ]] ; then
echo za siedemnaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 44 ]] ; then
echo za szesnaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 45 ]] ; then
echo za piętnaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 46 ]] ; then
echo za czternaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 47 ]] ; then
echo za trzynaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 48 ]] ; then
echo za dwanaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 49 ]] ; then
echo za jedenaście minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 50 ]] ; then
echo za dziesięć minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 51 ]] ; then
echo za dziewięć minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 52 ]] ; then
echo za osiem minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 53 ]] ; then
echo za siedem minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 54 ]] ; then
echo za sześć minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 55 ]] ; then
echo za pięć minut godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 56 ]] ; then
echo za cztery minuty godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 57 ]] ; then
echo za trzy minuty godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 58 ]] ; then
echo za dwie minuty godzina pierwsza | RHVoice-test -p $lektor
else if [[ "$h" = 00 ]] && [[ "$m" = 59 ]] ; then
echo za minutę godzina pierwsza | RHVoice-test -p $lektor
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
# A teraz minuty
if [[ "$m" = 01 ]] ; then
echo i jedna minuta | RHVoice-test -p $lektor
else if [[ "$m" = 02 ]] ; then
echo i dwie minuty | RHVoice-test -p $lektor
else if [[ "$m" = 03 ]] ; then
echo i trzy minuty | RHVoice-test -p $lektor
else if [[ "$m" = 04 ]] ; then
echo i cztery minuty | RHVoice-test -p $lektor
else if [[ "$m" = 05 ]] ; then
echo i pięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 06 ]] ; then
echo i sześć minut | RHVoice-test -p $lektor
else if [[ "$m" = 07 ]] ; then
echo i siedem minut | RHVoice-test -p $lektor
else if [[ "$m" = 08 ]] ; then
echo i osiem minut | RHVoice-test -p $lektor
else if [[ "$m" = 09 ]] ; then
echo i dziewięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 10 ]] ; then
echo i dziesięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 11 ]] ; then
echo i jedenaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 12 ]] ; then
echo i dwanaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 13 ]] ; then
echo i trzynaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 14 ]] ; then
echo i czternaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 15 ]] ; then
echo i piętnaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 16 ]] ; then
echo szesnaście | RHVoice-test -p $lektor
else if [[ "$m" = 17 ]] ; then
echo i siedemnaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 18 ]] ; then
echo i osiemnaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 19 ]] ; then
echo i dziewiętnaście minut | RHVoice-test -p $lektor
else if [[ "$m" = 20 ]] ; then
echo i dwadzieścia minut | RHVoice-test -p $lektor
else if [[ "$m" = 21 ]] ; then
echo i dwadzieścia jeden minut | RHVoice-test -p $lektor
else if [[ "$m" = 22 ]] ; then
echo i dwadzieścia dwie minuty | RHVoice-test -p $lektor
else if [[ "$m" = 23 ]] ; then
echo i dwadzieścia trzy minuty | RHVoice-test -p $lektor
else if [[ "$m" = 24 ]] ; then
echo i dwadzieścia cztery minuty | RHVoice-test -p $lektor
else if [[ "$m" = 25 ]] ; then
echo i dwadzieścia pięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 26 ]] ; then
echo i dwadzieścia sześć minut | RHVoice-test -p $lektor
else if [[ "$m" = 27 ]] ; then
echo i dwadzieścia siedem minut | RHVoice-test -p $lektor
else if [[ "$m" = 28 ]] ; then
echo i dwadzieścia osiem minut | RHVoice-test -p $lektor
else if [[ "$m" = 29 ]] ; then
echo i dwadzieścia dziewięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 30 ]] ; then
echo i trzydzieści minut| RHVoice-test -p $lektor
else if [[ "$m" = 31 ]] ; then
echo i trzydzieści jeden minut | RHVoice-test -p $lektor
else if [[ "$m" = 32 ]] ; then
echo i trzydzieści dwie minuty | RHVoice-test -p $lektor
else if [[ "$m" = 33 ]] ; then
echo i trzydzieści trzy minuty| RHVoice-test -p $lektor
else if [[ "$m" = 34 ]] ; then
echo i trzydzieści cztery minuty | RHVoice-test -p $lektor
else if [[ "$m" = 35 ]] ; then
echo i trzydzieści pięć minut| RHVoice-test -p $lektor
else if [[ "$m" = 36 ]] ; then
echo i trzydzieści sześć minut | RHVoice-test -p $lektor
else if [[ "$m" = 37 ]] ; then
echo i trzydzieści siedem minut | RHVoice-test -p $lektor
else if [[ "$m" = 38 ]] ; then
echo i trzydzieści osiem minut | RHVoice-test -p $lektor
else if [[ "$m" = 39 ]] ; then
echo i trzydzieści dziewięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 40 ]] ; then
echo i czterdzieści minut| RHVoice-test -p $lektor
else if [[ "$m" = 41 ]] ; then
echo i czterdzieści jeden minut | RHVoice-test -p $lektor
else if [[ "$m" = 42 ]] ; then
echo i czterdzieści dwie minuty | RHVoice-test -p $lektor
else if [[ "$m" = 43 ]] ; then
echo i czterdzieści trzy minuty | RHVoice-test -p $lektor
else if [[ "$m" = 44 ]] ; then
echo i czterdzieści cztery minuty | RHVoice-test -p $lektor
else if [[ "$m" = 45 ]] ; then
echo i czterdzieści pięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 46 ]] ; then
echo i czterdzieści sześć minut | RHVoice-test -p $lektor
else if [[ "$m" = 47 ]] ; then
echo i czterdzieści siedem minut | RHVoice-test -p $lektor
else if [[ "$m" = 48 ]] ; then
echo i czterdzieści osiem minut | RHVoice-test -p $lektor
else if [[ "$m" = 49 ]] ; then
echo i czterdzieści dziewięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 50 ]] ; then
echo i pięćdziesiąt minut | RHVoice-test -p $lektor
else if [[ "$m" = 51 ]] ; then
echo i pięćdziesiąt jeden minut | RHVoice-test -p $lektor
else if [[ "$m" = 52 ]] ; then
echo i pięćdziesiąt dwie minuty | RHVoice-test -p $lektor
else if [[ "$m" = 53 ]] ; then
echo i pięćdziesiąt trzy minuty | RHVoice-test -p $lektor
else if [[ "$m" = 54 ]] ; then
echo i pięćdziesiąt cztery minuty | RHVoice-test -p $lektor
else if [[ "$m" = 55 ]] ; then
echo i pięćdziesiąt pięć minut | RHVoice-test -p $lektor
else if [[ "$m" = 56 ]] ; then
echo i pięćdziesiąt sześć minut | RHVoice-test -p $lektor
else if [[ "$m" = 57 ]] ; then
echo i pięćdziesiąt siedem minut | RHVoice-test -p $lektor
else if [[ "$m" = 58 ]] ; then
echo i pięćdziesiąt osiem minut | RHVoice-test -p $lektor
else if [[ "$m" = 59 ]] ; then
echo i pięćdziesiąt dziewięć minut | RHVoice-test -p $lektor
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
echo Lektor $lektor, jest godzina $h:$m