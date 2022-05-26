#!/usr/bin/env bash

plantuml -o build "$1.uml"
kitty +kitten icat "build/$1.png"
