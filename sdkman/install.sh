#!/usr/bin/env bash

set -e

source "$(dirname "$0")/../script/bootstrap.bash"

if check_command brew; then
    brew_install curl
else
    fail 'brew must be installed'
fi

export SDKMAN_DIR="$HOME/.sdkman"

if [ ! -d "$SDKMAN_DIR" ]; then 
    curl -s "https://get.sdkman.io" | sed 's!^sdkman_bashrc=".*"$!sdkman_bashrc=/dev/null!' | sed 's!^sdkman_zshrc=".*"$!sdkman_zshrc=/dev/null!' | bash
else
    info 'sdkman is already installed.'
fi

if ! check_command "sdkman"; then
    source "$SDKMAN_DIR/bin/sdkman-init.sh"
fi

JAVA_VERSION="8.0.242.hs-adpt"
sdk install java $JAVA_VERSION
sdk default java $JAVA_VERSION

SCALA_VERSION="2.13.0"
sdk install scala $SCALA_VERSION
sdk default scala $SCALA_VERSION

SBT_VERSION="1.2.8"
sdk install sbt $SBT_VERSION
sdk default sbt $SBT_VERSION

