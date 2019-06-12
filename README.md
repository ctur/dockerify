# Dockerify - WIP!

![Docker Development](docker-dev.jpg)

Dockerify is a WIP project for creating a development environment inside a container.

```sh
$ docker build -t test/latest . # build image from dockerfile
$ docker run -it --name test test/latest zsh # create container from image
$ docker start -i test (for stopped container) # reconnect to container
$ docker image rm -f test/latest # remove image
```

```sh
$ docker commit test test_prod/latest
$ docker save test_prod/latest > /home/username/test_prod.tar
$ cat test_prod.tar | docker load
```

# Tech

Dockerify uses a number of open source projects to work properly:

- [Zsh] - Zsh is a shell designed for interactive use, although it is also a powerful scripting language
- [Oh-My-Zsh] - Oh My Zsh is a delightful, open source, community-driven framework for managing your Zsh configuration.
- [node.js] - evented I/O for the backend
- [Express] - fast node.js network app framework [@tjholowaychuk]
- [zgen] - A lightweight plugin manager for Zsh inspired by Antigen. Keep your .zshrc clean and simple.

# Useful Commands

- ubuntu details

```sh
$ lsb_release -a
```

- machine details

```sh
$ lshw -a
```

- set env from bash

```sh
$ Enviroment=Term=xterm
```

[//]: # "These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax"
[node.js]: http://nodejs.org
[oh-my-zsh]: https://ohmyz.sh/
[zsh]: https://www.zsh.org
[@tjholowaychuk]: http://twitter.com/tjholowaychuk
[express]: http://expressjs.com
[zgen]: https://github.com/tarjoilija/zgen
