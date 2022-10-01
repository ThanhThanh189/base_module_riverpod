#!/bin/sh

usage_exit() {
  echo "Usage: $0 [-u] [-c]" 1>&2
  echo "  -u: Update packages"
  echo "  -c: Clean caches"
  exit 1
}

abort() {
  cd $CURRENT_DIR
  echo "Bootstrap aborted."
  exit 1
}

CURRENT_DIR=$(pwd)
SCRIPT_DIR=$(dirname $0)

UPDATE=false
CLEAN=false

while getopts cuh OPT; do
  case $OPT in
  u)
    UPDATE=true
    ;;
  c)
    CLEAN=true
    ;;
  h)
    usage_exit
    ;;
  \?)
    usage_exit
    ;;
  esac
done

echo 'Bootstraps the app projects'

cd $SCRIPT_DIR

if $CLEAN; then
  fvm flutter clean
fi
fvm flutter pub get
if $UPDATE; then
  fvm flutter pub upgrade
fi

echo "name: flutter_gen" >./.dart_tool/flutter_gen/pubspec.yaml
fvm flutter pub run build_runner build --delete-conflicting-outputs

echo "Bootstrap finished"
cd $CURRENT_DIR
