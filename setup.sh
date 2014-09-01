#!/bin/sh
set -e

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(dirname $0)
readonly ARGS="$@"

install_babushka() {
  echo ""
  echo "Installing babushka..."
  echo ""

  sudo sh -c "`curl https://babushka.me/up`" < /dev/null
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
    babushka "main"
}

main() {
    install_babushka_if_missing
    install_everything
}
main