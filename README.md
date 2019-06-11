** Commands to start **

-> docker build -t test/latest .
-> docker container rm -f test
-> docker run -it --name test test/latest zsh
-> docker image rm -f test/latest
-> docker start -i test (for stopped container)
