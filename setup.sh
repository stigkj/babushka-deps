#!/bin/sh
set -e

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(dirname $0)
readonly ARGS="$@"

install_babushka() {
  echo ""
  echo "Installing babushka..."

  echo "  creating installation directories for babushka (need sudo)..."
  sudo mkdir -p /usr/local/babushka
  sudo mkdir -p /usr/local/bin
  echo ""

  REPO=https://github.com/stigkj/babushka.git VERSION=master sh -c "`curl https://babushka.me/up`" < /dev/null
}

install_babushka_if_missing() {
    command -v babushka >/dev/null 2>&1 \
        || install_babushka
}

install_everything() {
    echo ""
    echo "Installing everything..."
    echo ""

    cd $PROGDIR
    babushka "stigkj:main"
}

main() {
    install_babushka_if_missing
    install_everything
}
main
