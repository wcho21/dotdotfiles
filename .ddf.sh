#!/usr/bin/env bash

DOTFILES_DIR=$HOME/.dotfiles

function dotfiles_git {
  git --git-dir=$DOTFILES_DIR --work-tree=$HOME "$@"
}

function dotfiles_init {
  if [[ -d $DOTFILES_DIR ]]; then
    error "already initialized at '$DOTFILES_DIR'"
  fi

  git init --bare $DOTFILES_DIR
  dotfiles_git config --local status.showUntrackedFiles no
}

function help {
  echo "Usage: init | git"
  echo "  init  Initialize a git repository"
  echo "  git   Run a git command"
}

function error {
  echo "Error: $1"
  exit 1
}

if ! command -v git &> /dev/null; then
  error "git is not installed."
fi

case "$1" in
  git)
    shift
    dotfiles_git $@
    ;;

  init)
    shift
    dotfiles_init $@
    ;;

  *)
    help
    ;;
esac
