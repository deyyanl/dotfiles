#!/bin/sh zsh
echo "Cloning GitHub repositories..."

PERSONAL_PROJ=$PROJ_DIR/deyyanl
CLIENTS=(
    itrinity
    maxlab
    lambdatest
    xrgb
    parallax
)

mkdir $PERSONAL_PROJ
for client in "${CLIENTS[@]}"
do
    mkdir $PROJ_DIR/$client
done

# Clone the repos (example)
git clone deyyanl/dotfiles $PERSONAL_PROJ # While utilizing custom git command (vendor/repo, credirs to @lorisleiva)
