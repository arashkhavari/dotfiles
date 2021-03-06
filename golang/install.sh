#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../script/bootstrap.bash"

if check_command brew; then
    brew_install git
    brew install mercurial
else
    fail 'brew must be installed'
fi

if ! check_command "gvm"; then
    export GVM_NO_UPDATE_PROFILE=1
    $(which bash) -c "$(curl -fsSL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"

    [ -s "$HOME/.gvm/scripts/gvm" ] && . "$HOME/.gvm/scripts/gvm"

    GO_VERSION="go1.13"
    gvm install "${GO_VERSION}" -pb -b -B
    gvm use "${GO_VERSION}" --default
fi
