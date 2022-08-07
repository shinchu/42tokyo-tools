# 42tokyo-tools

`bash`, `gcc`, `gdb`, `make`, `valgrind`, and `norminette` packaged into a Docker image, originated by [hanshazairi](https://github.com/hanshazairi/42ools).

## Usage

Pull latest Docker image from GitHub Container Registry.

```bash
$ docker pull ghcr.io/shinchu/42tokyo-tools:main
```

Change directory to project repository, and start a container.

```
$ cd path/to/repo
$ docker container run --rm -it -v $PWD:/tmp ghcr.io/shinchu/42tokyo-tools:main
```

Inside the container, change directory to `/tmp`, and run the necessary commands to build & test your project.

```
# cd tmp
# find . -type f \( -name '*.c' -o -name '*.h' \) | xargs norminette
# make
# gdb a.out
# valgrind --leak-check=yes ./a.out
# exit
```
