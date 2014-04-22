#!/bin/sh

set -e
set -u
set -x

curl -F "name=lvillani" -F "token=${1}" -F "package=@monokai-theme.el" http://www.marmalade-repo.org/v1/packages
