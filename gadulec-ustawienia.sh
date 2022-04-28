#!/bin/bash
#
# Skrypt sterujący dla mówiącego zegara /usr/bin/gadulec
# Wersja 1.5.5 zaktualizowana 3 czerwca 2016 r.

# Zmienne do kolorowania wyjścia konsoli
RED='\033[1;31m';
GREEN='\033[1;32m';
NORMAL='\033[0m';

function fun_mess () {
	if [[ -f $(which zenity) ]] && [[ $(zenity --version | sed 's/\..*$//') -ge 2 ]] && [[ "$DISPLAY" != "" ]]; then
		zenity --$1 --title="$(basename $0)" --text="$2" --timeout="5";
	else
		if [[ "$1" = "info" ]]; then
			echo -e "${GREEN}Skrypt $(basename $0). Wiadomość: $2${NORMAL}";
		else
			echo -e "${RED}Skrypt $(basename $0). Błąd: $2${NORMAL}";
		fi
	fi
}

function 1m () {
	crontab -l > /tmp/gadulec;
	sed -i '/gadulec.sh/d' /tmp/gadulec;
	echo "*/1 *	* * *   $HOME/gadulec/gadulec.sh > /dev/null 2>&1" >> /tmp/gadulec;
	crontab /tmp/gadulec;
	fun_mess "info" "Zegarek jest włączony\nPodaję czas co minutę";
}

function 15m () {
	crontab -l > /tmp/gadulec;
	sed -i '/gadulec.sh/d' /tmp/gadulec;
	echo "*/15 *	* * *   $HOME/gadulec/gadulec.sh > /dev/null 2>&1" >> /tmp/gadulec;
	crontab /tmp/gadulec;
	fun_mess "info" "Zegar jest włączony\nPodaję czas co 15 minut";
}

function 30m () {
	crontab -l > /tmp/gadulec;
	sed -i '/gadulec.sh/d' /tmp/gadulec;
	echo "*/30 *	* * *   $HOME/gadulec/gadulec.sh > /dev/null 2>&1" >> /tmp/gadulec;
	crontab /tmp/gadulec;
	fun_mess "info" "Zegar jest włączony\nPodaję czas co 30 minut";
}

function 1h () {
	crontab -l > /tmp/gadulec;
	sed -i '/gadulec.sh/d' /tmp/gadulec;
	echo "0 */1	* * *   $HOME/gadulec/gadulec.sh > /dev/null 2>&1" >> /tmp/gadulec;
	crontab /tmp/gadulec;
	fun_mess "info" "Zegar jest włączony\nPodaję czas co godzinę" --timeout="3"
}

function otkl () {
	crontab -l > /tmp/gadulec;
	sed -i '/gadulec.sh/d' /tmp/gadulec;
	crontab /tmp/gadulec;
	fun_mess "info" "Zegar wyłączony";
}

function fun_menu () {
	case $upr in
		1-min)    1m   ;;
		15-min)    15m   ;;
		30-min)    30m   ;;
		1-godz)    1h  ;;
		Wyłączyć)    otkl   ;;
		Test)   exec $(dirname $0)/gadulec.sh  ;;
		*)     fun_mess "info" "Akcja anulowana przez użytkownika"    ;;
	esac
}

if [[ -f $( which mplayer) ]] || [[ -f $(which cvlc) ]]; then
	if ! [[ -d "$HOME/.config/gadulec" ]]; then
		mkdir -p $HOME/.config/gadulec;
		if ! [[ -f "$HOME/.config/gadulec/gadulec.conf" ]]; then
			echo "magda -v 15" > $HOME/.config/gadulec/gadulec.conf;
		fi
	fi
	if [[ -f $(which zenity) ]] && [[ $(zenity --version | sed 's/\..*$//') -ge 2 ]] && [[ "$DISPLAY" != "" ]]; then
		upr=$(zenity --title "Gadulec" --text "Wybierz akcję\n" --height 260 --list --radiolist --column "Wybór" --column "Akcja" True Test False 1-min False 15-min False 30-min  False 1-godz False Wyłącz);
		fun_menu "$upr";
	else
		if [[ "$DISPLAY" = "" ]]; then
			clear;
			PS3="Przypisz zakres czasu alertu lub wyłącz: ";
			select upr in Test 1-min 15-min 30-min 1-godz Wyłączyć; do
				fun_menu "$upr";
				break
			done
		else
			clear;
			echo -e "Zainstalowana wersja zenity nie obsługuje żądanego zestawu opcji\nMówiący zegar obsługuje zenity w wersji 2.32.1 lub nowszej.\n\n";
			PS3="Przypisz zakres czasu alertu lub wyłącz: ";
			select upr in Test 1-min 15-min 30-min 1-godz Wyłączyć; do
				fun_menu "$upr";
				break
			done
		fi
	fi
else
	fun_mess "error" "Nie znaleziono aplikacji mplayer ani vlc";
fi
exit 0;
