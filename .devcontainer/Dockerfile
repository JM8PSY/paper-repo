FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    wget \
    curl \
    git \
    make \
    ca-certificates \
    texlive-latex-extra \
    texlive-lang-japanese \
    texlive-bibtex-extra \
    latexmk \
    fonts-noto-cjk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*