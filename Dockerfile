FROM alpine:latest

RUN apk add --no-cache bash \
		gcc \
		musl-dev \
		readline-dev \
		gdb \
		make \
		valgrind \
		py3-pip \
		tmux

RUN pip install --no-cache-dir norminette