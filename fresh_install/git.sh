#!/bin/bash

git config --global user.name "Vadim Nifadev"
git config --global user.email 36514612+nifadyev@users.noreply.github.com
# Delete upstream from deleted branches on `git fetch` - useful for `lazygit`
git config --global remote.origin.prune true
git config --global credential.helper store
