# Docker + Alpine + Supervisor

* [Docker - Build, Ship, and Run Any App, Anywhere](https://www.docker.com/)
* [Alpine Linux | Alpine Linux](https://alpinelinux.org/)
 * [A minimal Docker image based on Alpine Linux with a complete package index and only 5 MB in size!](https://hub.docker.com/_/alpine/)
* [Supervisor: A Process Control System — Supervisor](http://supervisord.org/)
 * [Using Supervisor with Docker](https://docs.docker.com/engine/admin/using_supervisord/)

---

* [Adding a Program](http://supervisord.org/running.html#adding-a-program)

via `docker`:

```
$ cat foo.ini 
[program:foo]
command=/bin/cat
$ 
```

via `docker-compose`:

```
$ touch foo.ini
$ mkdir ./supervisor.d/
$ docker-compose up --detach --build
...
$ 
```
