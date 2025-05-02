#! /bin/bash
# How to manage Python via pyenv and pipx on Fedora 39 - https://gist.github.com/tchamberlin/a4806d31556d3f1b27fd8ace7e2d7e34

# How to disable pip without venv
# There's a global option require-virtualenv to require a virtual environment when operating pip.
#
# Several ways to enable this (pick one):
#
#     As configuration option (which has my preference) like this, in e.g. ~/.config/pip/pip.conf or /etc/pip.conf:
#
#     [global]
#     require-virtualenv = True

# Use pipx for system and user packages - https://pipx.pypa.io/stable/

# pip install poetry

# Poetry
curl -sSL https://install.python-poetry.org | python3 -
