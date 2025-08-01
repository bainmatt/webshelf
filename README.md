# Webshelf

Webshelf is a simple shell program that helps you manage your Chrome tabs
the right way: from the command line 😎.

<!-- TODO: Symlink to fff-{preview,action}.sh, _ffi, _ffs in src/ -->
[Demo](#demo) • [How to use](#usage) • [Installation](#installation)

## Rationale

Every internet user has dealt with the dreaded sprawl of browser tabs
accumulated over a session of unchecked browsing. How did this happen?
There are many culprits -- competing priorities, a long research
session, curiosity, a love of curation, or sheer indifference -- but we have
all had to grapple with this untenable situation at one point or another,
and maybe have even wondered: "Could there be a better way?". The answer is
yes! Webshelf has heard your call and is here to rescue us from our bad
browsing habits.

## Demo

<!-- TODO: Extend the demo -->
![demo](doc/demo.svg)

## Usage

Webshelf is a simple application that helps you manage your Chrome bookmarks.
It does two things:

1. Lists your open browser windows and lets you save the links from any one
   of them to a file on your computer:

        $ webshelf save
        <Select a window to save links from>

2. Lists available files from previous browsing sessions:

        $ webshelf open
        <Peruse saved files and the links inside them>

3. Opens the links from a chosen file on your request:

        $ webshelf restore
        <Select a file to restore links from>

~ And that's all you need to know to save your tabs -- and your sanity 😎. ~

## Requirements

Webshelf is a shell script that depends on the following CLI applications,
all installable via Homebrew (for fellow Mac users -- Window users, for the
time being, you're on your own, but I'm sure you can figure it out):

- [`chrome-cli`](https://github.com/prasmussen/chrome-cli?tab=readme-ov-file) - a command line interface for Chrome.
- [`fzf`](https://github.com/junegunn/fzf) - a fuzzy finder for file selection.
- [`bat`](https://github.com/sharkdp/bat) - a file viewer with syntax highlighting.

## Installation

To install webshelf, clone the repository and make the script executable:

    git clone XXX
    cd webshelf
    chmod +x webshelf/webshelf

Add webshelf to your PATH by adding the following to your .zhrc or .bashrc:

    export PATH="$PATH:/path/to/webshelf"

Install the required dependencies using Homebrew:

    brew install chrome-cli fzf bat

~ happy browsing ~
