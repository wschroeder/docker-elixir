# Elixir in Docker

This is a full build of Elixir 1.3.4 in docker for development purposes,
including applications like observer on top of a working wxWidgets
installation.

How I use this in Linux:

    docker run -u 1000:1000 -e DISPLAY=:0 -w /work -v $PWD:/work -v $HOME/.hex:$HOME/.hex:rw -v $HOME/.mix:$HOME/.mix:rw -v /etc/passwd:/etc/passwd:ro -v /tmp/.X11-unix:/tmp/.X11-unix -it --rm wschroeder/elixir:1.3.4


For Mac OS, you will need to use the socat trick in order to pipe the X11
display for observer.

This build is based on wschroeder/erlang:19.1.5 on docker hub.


# Slim

I am also providing a slim version to docker hub that is not the result of an
automated build because I do not know how to ask hub to automate re-exporting.
The slim version is the same as the main version, but I ran this command
locally:

    docker export wschroeder/elixir:1.3.4 | docker import - wschroeder/elixir:1.3.4-slim

