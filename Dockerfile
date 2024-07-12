# Docker image containing Python stuff based on base development image for Debian stable.

FROM fredrikandersson/debian-stable-dev-image-base:2024-07-01

RUN apt-get update --quiet --yes && apt-get install --quiet --yes \
    dvipng \
    pipenv \
    python3-full \
    python3-pip \
    python3-poetry \
    python3-numpy \
    python3-scipy \
    texlive-latex-extra \
    texlive-latex-recommended
