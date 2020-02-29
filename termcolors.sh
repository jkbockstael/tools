#!/bin/bash

# Display all the colors that can be used in the terminal

function enumeratecolors() {
    for color in $(seq 1 $(tput colors)); do
        echo "$(tput setaf ${color})${color}$(tput sgr0)"
    done
}

enumeratecolors | column
