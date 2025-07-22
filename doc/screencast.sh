#!/bin/bash

# Source: https://github.com/sharkdp/fd/blob/master/doc/screencast.sh

# Designed to be executed via svg-term from the root directory:
# $ svg-term --command="bash doc/screencast.sh" --out doc/demo.svg --padding=10
# Then run this (workaround for #1003):
# $ sed -i '' 's/<text/<text font-size="1.67"/g' doc/demo.svg

set -e
set -u

PROMPT="▶"

comment() {
    INPUT=$1
    DELAY=1

    GREEN='\033[0;32m'
    NC='\033[0m'

    prompt
    sleep "$DELAY"
    type "${GREEN}# $INPUT${NC}"
    # type "# $INPUT"
    sleep 0.5
    printf '%b' "\\n"
}

express() {
    INPUT=$1
    DELAY=0.5

    sleep "$DELAY"
    eval "$INPUT"
    type "\\n"
}

enter() {
    INPUT=$1
    DELAY=0.5

    prompt
    sleep "$DELAY"
    type "$INPUT"
    sleep 0.5
    printf '%b' "\\n"
    eval "$INPUT"
    type "\\n"
}

prompt() {
    printf '%b ' "$PROMPT" | pv -q
}

type() {
    printf '%b' "$1" | pv -qL $((10+(-2 + RANDOM%5)))
}

main() {
    IFS='%'

    comment "Welcome to webshelf!"
    express "figlet -w 80 webshelf | lolcat"
    enter "webshelf"

    # enter "fd fi"

    # enter "fd --type d"

    prompt

    sleep 3

    echo ""

    unset IFS
}

main
