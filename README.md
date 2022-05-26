# PwChO_Zadanie1 

# Etapy konfiguracji GitHub Container Registry 

* 1. Stworzyłam Github access token z uprawnieniami rwd do package'a  
* 2. Dodałam ten token do repository secrets, który później wykorzystałam w pliku konfiguracyjnym build.yml
* 3. Wykorzystanie Github Actions automatycznie przesłało dane

# Odpowiedzi Ad. 3.
* a. Do zbudowania obrazu kontenera służy polecenie
```
docker buildx build -t mzradwan/pwcho_zadanie2:latest --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --push .
```
* b. Aby uruchomić kontener należy użyć  
docker run --name http-server -p 8083:8083 ghcr.io/mzradwan/pwcho_zadanie2:latest

```
lub 
```
docker run --name http-server -p 8083:8083 mzradwan/pwcho_zadanie2:latest
```
* c. Do pobrania logu należy wykorzystać polecenie 
```
docker logs http-server  |& head -1
```
* d. Do wyświetlenia liczby warstw można użyć następującego polecenia 
```
docker history -q mzradwan/pwcho_zadanie2:latest | wc -l 
```
lub 
```
docker history -q ghcr.io/mzradwan/pwcho_zadanie2:latest | wc -l 
```