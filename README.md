# Docker + Alpine + Supervisor

* [Docker - Build, Ship, and Run Any App, Anywhere](https://www.docker.com/)
* [Alpine Linux | Alpine Linux](https://alpinelinux.org/)
 * [A minimal Docker image based on Alpine Linux with a complete package index and only 5 MB in size!](https://hub.docker.com/_/alpine/)
* [Supervisor: A Process Control System — Supervisor](http://supervisord.org/)
 * [Using Supervisor with Docker](https://docs.docker.com/engine/admin/using_supervisord/)

---

via `docker`:

```
$ docker run --name supervisor --volume $(pwd):/etc/supervisor.d/ --detach docker.io/alexus/supervisord
cd18364e220ff251f4a5d59f59b40a4c48ec08ed855ce62482475a1f95db4557
$ docker exec --interactive --tty supervisor supervisorctl
supervisor> 
$ 
```

via `docker-compose`:

```
$ docker-compose up --detach --build
```

* [Adding a Program](http://supervisord.org/running.html#adding-a-program)

```
$ mkdir ./supervisor.d/
$ $EDITOR ./supervisor.d/foo.ini
$ cat ./foo.ini 
[program:foo]
command=/bin/cat
$ 
```
