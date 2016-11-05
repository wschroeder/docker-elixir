FROM wschroeder/erlang:19.1.5
MAINTAINER William Schroeder <wschroeder@gmail.com>

ENV ELIXIR_VERSION=1.3.4

RUN git clone --branch v${ELIXIR_VERSION} --depth 1 https://github.com/elixir-lang/elixir

WORKDIR /root/elixir
RUN make clean test install

WORKDIR /root
RUN rm -rf elixir

