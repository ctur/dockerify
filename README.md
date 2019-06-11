# Dockerify - WIP!

![Docker Development](docker-dev.jpg)

Dockerify is a WIP project for creating a development environment inside a container.

```sh
$ docker build -t test/latest .
$ docker run -it --name test test/latest zsh
$ docker image rm -f test/latest
$ docker start -i test (for stopped container)
```

```sh
$ docker commit test test_prod/latest
$ docker save test_prod/latest > /home/username/test_prod.tar
$ cat test_prod.tar | docker load
```

### Tech

Dockerify uses a number of open source projects to work properly:

- [Zsh] - Zsh is a shell designed for interactive use, although it is also a powerful scripting language
- [markdown-it] - Markdown parser done right. Fast and easy to extend.
- [node.js] - evented I/O for the backend
- [Express] - fast node.js network app framework [@tjholowaychuk]

## License

MIT

**Free Software!**

[//]: # "These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax"
[dill]: https://github.com/joemccann/dillinger
[git-repo-url]: https://github.com/joemccann/dillinger.git
[john gruber]: http://daringfireball.net
[df1]: http://daringfireball.net/projects/markdown/
[markdown-it]: https://github.com/markdown-it/markdown-it
[ace editor]: http://ace.ajax.org
[node.js]: http://nodejs.org
[zsh]: https://www.zsh.org
[jquery]: http://jquery.com
[@tjholowaychuk]: http://twitter.com/tjholowaychuk
[express]: http://expressjs.com
[angularjs]: http://angularjs.org
