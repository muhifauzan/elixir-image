FROM elixir:1.12.3-slim

RUN set -xe \
        && fetch_deps='curl' \
        && ppa_deps='software-properties-common' \
        && build_deps='build-essential git nodejs' \
        && apt-get update \
        && apt-get install -y $fetch_deps $ppa_deps \
        && curl -fsLS https://deb.nodesource.com/setup_14.x | bash - \
        && apt-get update \
        && apt-get install -y $build_deps \
        && mix local.hex --force \
        && mix local.rebar --force
