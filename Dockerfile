FROM buildpack-deps:xenial
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

RUN apt update -y \
    && apt install --no-install-recommends -y \
        gettext \
        bison \
        autopoint \
        texinfo \
	&& rm -rf /var/lib/apt/lists/*

ARG uid
RUN useradd user -u ${uid:-1000}
USER user
