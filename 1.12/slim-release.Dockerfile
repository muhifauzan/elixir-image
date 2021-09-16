FROM debian:11.0-slim

RUN set -xe \
        && runtime_deps='libodbc1 libssl1.1 libsctp1' \
        && apt-get update \
        && apt-get install -y --no-install-recommends $runtime_deps
