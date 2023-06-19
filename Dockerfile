# Docker image containing Python stuff based on base development image for Debian stable.

FROM fredrikandersson/debian-stable-dev-image-base:2023-06-12

RUN apt-get update --quiet --yes && apt-get install --quiet --yes python3-pip python3-numpy python3-scipy python3-sympy python3-matplotlib python3-dateutil python3-sphinx python3-lxml python3-yaml python3-h5py texlive-latex-recommended texlive-latex-extra python3-sphinx-rtd-theme dvipng
RUN pip3 install --break-system-packages flake8
RUN pip3 install --break-system-packages nose
RUN pip3 install --break-system-packages pipenv
RUN pip3 install --break-system-packages poetry
RUN pip3 install --break-system-packages pycodestyle
RUN pip3 install --break-system-packages pydocstyle
RUN pip3 install --break-system-packages pylint
RUN pip3 install --break-system-packages pytest
RUN pip3 install --break-system-packages ruff
