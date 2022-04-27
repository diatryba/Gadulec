# Gadulec
Skrypt zegara mówiącego za pomocą syntezatora głosu RHVoice
Gadulec jest skryptem zegara mówiącego za pomocą RHVoice o mijających godzinach i minutach.
Do poprawnej pracy z polskim językiem Gadulec potrzebuje RHVoice, rhvoice-language-polish, rhvoice-voice-magda, rhvoice-voice-natan.

Niezbędne pliki można ściągnąć ze strony https://github.com/RHVoice/RHVoice lub zainstalować z oficjalnego repozytorium.

W pliku konfiguracyjnym ustawiamy głos wybranego lektora i poziom głośności.
W języku polskim są dostępne głosy Magda i Natan.

Skrypt gadulec-ustawienia.sh ustawia w cronie cykliczne wywoływanie lektora informującego o upływającym czasie.
Ten skrypt pochodzi z mówiącego zegara vclock z 2014 roku. Autorem skryptu ustawiającego cronie jest Sakryukin K.V. (Сакрюкин К.В.)
Skrypt został przeze mnie dostosowany do Gadulca, który nie korzysta z plików dźwiękowych, ponieważ syntezuje mowę za pomocą RHVoice i jest łatwy do modyfikacji przez użytkowników.

diatryba

